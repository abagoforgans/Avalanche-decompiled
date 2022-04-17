contract main {




// =====================  Runtime code  =====================


#
#  - mint()
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 price;
array of struct remaining;
array of struct stor13;
mapping of struct userNft;
uint8 paused;
address feeAddress; offset 8

function remaining(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < remaining.length
    return remaining[arg1].field_0
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function feeAddress() {
    return feeAddress
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getUserNft(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userNft[arg1].field_0
}

function getRemainingNFTsLength() {
    return remaining.length
}

function owner() {
    return owner
}

function price() {
    return price
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

function changePause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
    emit Paused(arg1);
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
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function addNumbers(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = arg1
    while idx <= arg2:
        remaining.length++
        mem[0] = 12
        remaining[remaining.length].field_0 = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function getRemainingNFTs() {
    if remaining.length:
        mem[128] = uint256(remaining.field_0)
        idx = 128
        s = 0
        while (32 * remaining.length) + 96 > idx:
            mem[idx + 32] = remaining[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=remaining.length, data=mem[128 len 32 * remaining.length])
    mem[(32 * remaining.length) + 128] = 32
    mem[(32 * remaining.length) + 160] = remaining.length
    mem[(32 * remaining.length) + 192 len 32 * remaining.length] = mem[128 len 32 * remaining.length]
    return memory
      from (32 * remaining.length) + 128
       len (96 * remaining.length) + 64
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg4.length) + 128] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
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

function getUserInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userNft[address(arg1)].field_256:
        mem[128] = userNft[address(arg1)][1].field_0
        idx = 128
        s = 0
        while (32 * userNft[address(arg1)].field_256) + 96 > idx:
            mem[idx + 32] = userNft[address(arg1)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return userNft[address(arg1)].field_0, 
               Array(len=userNft[address(arg1)].field_256, data=mem[128 len 32 * userNft[address(arg1)].field_256])
    mem[(32 * userNft[address(arg1)].field_256) + 128] = userNft[address(arg1)].field_0
    mem[(32 * userNft[address(arg1)].field_256) + 160] = 64
    mem[(32 * userNft[address(arg1)].field_256) + 192] = userNft[address(arg1)].field_256
    mem[(32 * userNft[address(arg1)].field_256) + 224 len 32 * userNft[address(arg1)].field_256] = mem[128 len 32 * userNft[address(arg1)].field_256]
    return memory
      from (32 * userNft[address(arg1)].field_256) + 128
       len (96 * userNft[address(arg1)].field_256) + 96
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor13[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor13.length = 0
            idx = 0
            while stor13.length.field_1 + 31 / 32 > idx:
                stor13[idx].field_0 = 0
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
        call arg2.0x150b7a02 with:
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(arg4.length) + 128 < 96 or ceil32(arg4.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg4.length + arg4 + 36
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
    if not ext_code.size(arg2):
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function baseURI() {
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if bool(stor13.length):
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        else:
            if bool(stor13.length) == stor13.length.field_1 < 32:
                revert with 0, 34
            if stor13.length.field_1:
                if 31 < stor13.length.field_1:
                    mem[128] = uint256(stor13.field_0)
                    idx = 128
                    s = 0
                    while stor13.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor13[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)])
                mem[128] = 256 * stor13.length.field_8
        mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
        if ceil32(stor13.length.field_1) > stor13.length.field_1:
            mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor13.length.field_1), data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
    if bool(stor13.length) == stor13.length.field_1 < 32:
        revert with 0, 34
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if stor13.length.field_1:
            if 31 < stor13.length.field_1:
                mem[128] = uint256(stor13.field_0)
                idx = 128
                s = 0
                while stor13.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)])
            mem[128] = 256 * stor13.length.field_8
    mem[ceil32(stor13.length.field_1) + 192 len ceil32(stor13.length.field_1)] = mem[128 len ceil32(stor13.length.field_1)]
    if ceil32(stor13.length.field_1) > stor13.length.field_1:
        mem[stor13.length.field_1 + ceil32(stor13.length.field_1) + 192] = 0
    return Array(len=stor13.length % 128, data=mem[128 len ceil32(stor13.length.field_1)], mem[(2 * ceil32(stor13.length.field_1)) + 192 len 2 * ceil32(stor13.length.field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
            mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 0, 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[stor6[arg1].field_1 + ceil32(stor6[arg1].field_1) + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function createHF(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1
    require arg1 <= 30
    require arg2 > 270
    require arg2 <= 300
    stor10++
    stor9++
    mem[64] = 160
    mem[96] = arg1
    mem[128] = arg2
    idx = 0
    while idx < 2:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132392e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132392e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132392e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132392e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createHCl(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg2 > 640
    require arg2 <= 670
    require arg1 > 0
    require arg1 <= 30
    stor10++
    stor9++
    mem[64] = 160
    mem[96] = arg1
    mem[128] = arg2
    idx = 0
    while idx < 2:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132352e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132352e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132352e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132352e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createNaCl(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1 > 330
    require arg1 <= 360
    require arg2 > 640
    require arg2 <= 670
    stor10++
    stor9++
    mem[64] = 160
    mem[96] = arg1
    mem[128] = arg2
    idx = 0
    while idx < 2:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132342e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132342e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132342e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132342e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createHArF(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg2 == 671
    require arg1 > 0
    require arg1 <= 30
    require arg3 > 270
    require arg3 <= 300
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3133312e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3133312e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3133312e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3133312e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createH2O(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1
    require arg1 <= 30
    require arg2 > 0
    require arg2 <= 30
    require arg3 > 240
    require arg3 <= 270
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3131392e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3131392e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3131392e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3131392e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createKOH(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg3
    require arg3 <= 30
    require arg2 > 240
    require arg2 <= 270
    require arg1 > 671
    require arg1 <= 721
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132372e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132372e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132372e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132372e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createNaOH(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1 > 330
    require arg1 <= 360
    require arg2 > 240
    require arg2 <= 270
    require arg3 > 0
    require arg3 <= 30
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132332e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132332e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132332e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132332e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createSO2(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1 > 570
    require arg1 <= 640
    require arg2 > 240
    require arg2 <= 270
    require arg3 > 240
    require arg3 <= 270
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132382e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132382e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132382e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132382e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createCO2(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg2 > 240
    require arg2 <= 270
    require arg3 > 240
    require arg3 <= 270
    require arg1 > 150
    require arg1 <= 180
    stor10++
    stor9++
    mem[64] = 192
    mem[96] = arg2
    mem[128] = arg3
    mem[160] = arg1
    idx = 0
    while idx < 3:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132302e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132302e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132302e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132302e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function crateHNO3(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1
    require arg1 <= 30
    require arg2 > 180
    require arg2 <= 210
    require arg3 > 240
    require arg3 <= 270
    require arg4 > 240
    require arg4 <= 270
    require arg5 > 240
    require arg5 <= 270
    stor10++
    stor9++
    mem[64] = 256
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    idx = 0
    while idx < 5:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132362e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132362e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132362e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132362e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createCaCO3(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg1 > 721
    require arg1 <= 751
    require arg2 > 150
    require arg2 <= 180
    require arg3 > 240
    require arg3 <= 270
    require arg4 > 240
    require arg4 <= 270
    require arg5 > 240
    require arg5 <= 270
    stor10++
    stor9++
    mem[64] = 256
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    idx = 0
    while idx < 5:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132322e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132322e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132322e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132322e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createH2SO4(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require calldata.size - 4 >= 224
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require arg3 > 570
    require arg3 <= 640
    require arg4 > 240
    require arg4 <= 270
    require arg5 > 240
    require arg5 <= 270
    require arg6 > 240
    require arg6 <= 270
    require arg7 > 240
    require arg7 <= 270
    require arg1 > 0
    require arg1 <= 30
    require arg2 > 0
    require arg2 <= 30
    stor10++
    stor9++
    mem[64] = 320
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    mem[256] = arg6
    mem[288] = arg7
    idx = 0
    while idx < 7:
        _164 = mem[(32 * idx) + 96]
        _165 = mem[64]
        mem[64] = mem[64] + 32
        mem[_165] = 0
        if not ownerOf[_164]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_164]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_164]:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_164] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_164] = 0
            if not ownerOf[_164]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_164], 0, _164);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _164
            mem[32] = 2
            ownerOf[_164] = this.address
            emit Transfer(msg.sender, this.address, _164);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _164
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _165 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _164, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _428 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_428] == Mask(32, 224, mem[_428])
                if Mask(32, 224, mem[_428]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_164]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_164] == msg.sender:
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _430 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_430] == Mask(32, 224, mem[_430])
                    if Mask(32, 224, mem[_430]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_164]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_164] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_164] = 0
                if not ownerOf[_164]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_164], 0, _164);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _164
                mem[32] = 2
                ownerOf[_164] = this.address
                emit Transfer(msg.sender, this.address, _164);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _164
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _165 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _164, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == Mask(32, 224, mem[_432])
                    if Mask(32, 224, mem[_432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _179 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132312e6a736f6e000000000000000000000000000000000000000000000000
            _187 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _201 = mem[_187]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _201:
                    stor6[stor9][].field_0 = Array(len=_201, data=mem[_187 + 32 len _201])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _190 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _208 = mem[_190]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _208:
                        stor6[stor9][].field_0 = Array(len=_208, data=mem[_190 + 32 len _208])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132312e6a736f6e000000000000000000000000000000000000000000000000
                _418 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _435 = mem[_418]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _435:
                        stor6[stor9][].field_0 = Array(len=_435, data=mem[_418 + 32 len _435])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3132312e6a736f6e000000000000000000000000000000000000000000000000
            _191 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _211 = mem[_191]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _211:
                    stor6[stor9][].field_0 = Array(len=_211, data=mem[_191 + 32 len _211])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _195 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _218 = mem[_195]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _218:
                        stor6[stor9][].field_0 = Array(len=_218, data=mem[_195 + 32 len _218])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _179 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_179 + stor13.length.field_1 + 32] = 0x3132312e6a736f6e000000000000000000000000000000000000000000000000
                _419 = mem[64]
                mem[mem[64]] = _179 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _179 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _438 = mem[_419]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _438:
                        stor6[stor9][].field_0 = Array(len=_438, data=mem[_419 + 32 len _438])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}

function createC6H12O6(uint256[6] arg1, uint256[12] arg2, uint256[6] arg3) {
    require calldata.size - 4 >= 768
    require 35 < calldata.size
    require calldata.size >= 196
    idx = 0
    s = 4
    t = 96
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 227 < calldata.size
    require 580 <= calldata.size
    idx = 0
    s = 196
    t = 288
    while idx < 12:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 611 < calldata.size
    mem[64] = 864
    require calldata.size >= 772
    idx = 0
    s = 580
    t = 672
    while idx < 6:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    stor10++
    stor9++
    idx = 0
    while idx < 6:
        require mem[(32 * idx) + 96] > 150
        if idx >= 6:
            revert with 0, 50
        require mem[(32 * idx) + 96] <= 180
        if idx >= 6:
            revert with 0, 50
        _172 = mem[(32 * idx) + 96]
        _173 = mem[64]
        mem[64] = mem[64] + 32
        mem[_173] = 0
        if not ownerOf[_172]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_172]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_172]:
            if not ownerOf[_172]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_172] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_172] = 0
            if not ownerOf[_172]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_172], 0, _172);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _172
            mem[32] = 2
            ownerOf[_172] = this.address
            emit Transfer(msg.sender, this.address, _172);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _172
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _173 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _172, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _506 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_506] == Mask(32, 224, mem[_506])
                if Mask(32, 224, mem[_506]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_172]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_172] == msg.sender:
                if not ownerOf[_172]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_172] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_172] = 0
                if not ownerOf[_172]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_172], 0, _172);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _172
                mem[32] = 2
                ownerOf[_172] = this.address
                emit Transfer(msg.sender, this.address, _172);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _172
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _173 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _172, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _508 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_508] == Mask(32, 224, mem[_508])
                    if Mask(32, 224, mem[_508]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_172]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_172]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_172] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_172] = 0
                if not ownerOf[_172]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_172], 0, _172);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _172
                mem[32] = 2
                ownerOf[_172] = this.address
                emit Transfer(msg.sender, this.address, _172);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _172
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _173 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _172, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _510 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_510] == Mask(32, 224, mem[_510])
                    if Mask(32, 224, mem[_510]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 12:
        require mem[(32 * idx) + 288] > 0
        if idx >= 12:
            revert with 0, 50
        require mem[(32 * idx) + 288] <= 30
        if idx >= 12:
            revert with 0, 50
        _505 = mem[(32 * idx) + 288]
        _512 = mem[64]
        mem[64] = mem[64] + 32
        mem[_512] = 0
        if not ownerOf[_505]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_505]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_505]:
            if not ownerOf[_505]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_505] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_505] = 0
            if not ownerOf[_505]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_505], 0, _505);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _505
            mem[32] = 2
            ownerOf[_505] = this.address
            emit Transfer(msg.sender, this.address, _505);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _505
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _512 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _505, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_918] == Mask(32, 224, mem[_918])
                if Mask(32, 224, mem[_918]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_505]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_505] == msg.sender:
                if not ownerOf[_505]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_505] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_505] = 0
                if not ownerOf[_505]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_505], 0, _505);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _505
                mem[32] = 2
                ownerOf[_505] = this.address
                emit Transfer(msg.sender, this.address, _505);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _505
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _512 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _505, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_920] == Mask(32, 224, mem[_920])
                    if Mask(32, 224, mem[_920]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_505]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_505]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_505] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_505] = 0
                if not ownerOf[_505]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_505], 0, _505);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _505
                mem[32] = 2
                ownerOf[_505] = this.address
                emit Transfer(msg.sender, this.address, _505);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _505
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _512 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _505, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _922 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_922] == Mask(32, 224, mem[_922])
                    if Mask(32, 224, mem[_922]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 6:
        require mem[(32 * idx) + 672] > 240
        if idx >= 6:
            revert with 0, 50
        require mem[(32 * idx) + 672] <= 270
        if idx >= 6:
            revert with 0, 50
        _917 = mem[(32 * idx) + 672]
        _925 = mem[64]
        mem[64] = mem[64] + 32
        mem[_925] = 0
        if not ownerOf[_917]:
            revert with 0, 'ERC721: operator query for nonexistent token'
        if not ownerOf[_917]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if msg.sender == ownerOf[_917]:
            if not ownerOf[_917]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[_917] != msg.sender:
                revert with 0, 'ERC721: transfer of token that is not own'
            if not this.address:
                revert with 0, 'ERC721: transfer to the zero address'
            approved[_917] = 0
            if not ownerOf[_917]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            emit Approval(ownerOf[_917], 0, _917);
            if balanceOf[address(msg.sender)] < 1:
                revert with 0, 17
            balanceOf[address(msg.sender)]--
            if balanceOf[address(this.address)] > -2:
                revert with 0, 17
            balanceOf[address(this.address)]++
            mem[0] = _917
            mem[32] = 2
            ownerOf[_917] = this.address
            emit Transfer(msg.sender, this.address, _917);
            if ext_code.size(this.address):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = _917
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _925 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(this.address)
                call this.address.0x150b7a02 with:
                     gas gas_remaining wei
                    args msg.sender, msg.sender, _917, 128, 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    if not return_data.size:
                        if not mem[96]:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with memory
                          from 128
                           len mem[96]
                    if not return_data.size:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                    revert with ext_call.return_data[0 len return_data.size]
                _1256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1256] == Mask(32, 224, mem[_1256])
                if Mask(32, 224, mem[_1256]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        else:
            if not ownerOf[_917]:
                revert with 0, 'ERC721: approved query for nonexistent token'
            if approved[_917] == msg.sender:
                if not ownerOf[_917]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_917] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_917] = 0
                if not ownerOf[_917]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_917], 0, _917);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _917
                mem[32] = 2
                ownerOf[_917] = this.address
                emit Transfer(msg.sender, this.address, _917);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _917
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _925 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _917, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _1258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1258] == Mask(32, 224, mem[_1258])
                    if Mask(32, 224, mem[_1258]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if not stor5[stor2[_917]][address(msg.sender)]:
                    revert with 0, 'ERC721: transfer caller is not owner nor approved'
                if not ownerOf[_917]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[_917] != msg.sender:
                    revert with 0, 'ERC721: transfer of token that is not own'
                if not this.address:
                    revert with 0, 'ERC721: transfer to the zero address'
                approved[_917] = 0
                if not ownerOf[_917]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                emit Approval(ownerOf[_917], 0, _917);
                if balanceOf[address(msg.sender)] < 1:
                    revert with 0, 17
                balanceOf[address(msg.sender)]--
                if balanceOf[address(this.address)] > -2:
                    revert with 0, 17
                balanceOf[address(this.address)]++
                mem[0] = _917
                mem[32] = 2
                ownerOf[_917] = this.address
                emit Transfer(msg.sender, this.address, _917);
                if ext_code.size(this.address):
                    mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _917
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    s = 0
                    while s < 0:
                        mem[s + mem[64] + 164] = mem[s + _925 + 32]
                        s = s + 32
                        continue 
                    require ext_code.size(this.address)
                    call this.address.0x150b7a02 with:
                         gas gas_remaining wei
                        args msg.sender, msg.sender, _917, 128, 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        if not return_data.size:
                            if not mem[96]:
                                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            revert with memory
                              from 128
                               len mem[96]
                        if not return_data.size:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                        revert with ext_call.return_data[0 len return_data.size]
                    _1260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1260] == Mask(32, 224, mem[_1260])
                    if Mask(32, 224, mem[_1260]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor9]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    mem[0] = stor9
    ownerOf[stor9] = msg.sender
    emit Transfer(0, msg.sender, stor9);
    _991 = mem[64]
    if bool(stor13.length):
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3133302e6a736f6e000000000000000000000000000000000000000000000000
            _1010 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _1022 = mem[_1010]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _1022:
                    stor6[stor9][].field_0 = Array(len=_1022, data=mem[_1010 + 32 len _1022])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _1022:
                    stor6[stor9][].field_0 = Array(len=_1022, data=mem[_1010 + 32 len _1022])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _1013 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _1029 = mem[_1013]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1029:
                        stor6[stor9][].field_0 = Array(len=_1029, data=mem[_1013 + 32 len _1029])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1029:
                        stor6[stor9][].field_0 = Array(len=_1029, data=mem[_1013 + 32 len _1029])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _991 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_991 + stor13.length.field_1 + 32] = 0x3133302e6a736f6e000000000000000000000000000000000000000000000000
                _1246 = mem[64]
                mem[mem[64]] = _991 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _991 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _1263 = mem[_1246]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1263:
                        stor6[stor9][].field_0 = Array(len=_1263, data=mem[_1246 + 32 len _1263])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1263:
                        stor6[stor9][].field_0 = Array(len=_1263, data=mem[_1246 + 32 len _1263])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if bool(stor13.length) == stor13.length.field_1 < 32:
            revert with 0, 34
        if not bool(stor13.length):
            mem[mem[64] + 32] = Mask(248, 8, stor13.length)
            mem[mem[64] + stor13.length.field_1 + 32] = 0x3133302e6a736f6e000000000000000000000000000000000000000000000000
            _1014 = mem[64]
            mem[mem[64]] = stor13.length.field_1 + 8
            mem[64] = mem[64] + stor13.length.field_1 + 40
            if not ownerOf[stor9]:
                revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
            mem[0] = stor9
            mem[32] = 6
            _1032 = mem[_1014]
            if stor6[stor9].field_0:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _1032:
                    stor6[stor9][].field_0 = Array(len=_1032, data=mem[_1014 + 32 len _1032])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                    revert with 0, 34
                if _1032:
                    stor6[stor9][].field_0 = Array(len=_1032, data=mem[_1014 + 32 len _1032])
                else:
                    stor6[stor9].field_0 = 0
                    idx = 0
                    while stor6[stor9].field_1 + 31 / 32 > idx:
                        stor6[stor9][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        else:
            if bool(stor13.length) != 1:
                _1016 = mem[64]
                mem[mem[64]] = -mem[64] - 24
                mem[64] = 8
                if not ownerOf[stor9]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                0,
                                8,
                                Mask(96, 0, 'ERC721URIStorage: URI set of non'),
                                0x6578697374656e7420746f6b656e000000000000000000000000000000000000
                mem[0] = stor9
                mem[32] = 6
                _1038 = mem[_1016]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1038:
                        stor6[stor9][].field_0 = Array(len=_1038, data=mem[_1016 + 32 len _1038])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1038:
                        stor6[stor9][].field_0 = Array(len=_1038, data=mem[_1016 + 32 len _1038])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                idx = 0
                s = 0
                while idx < stor13.length.field_1:
                    mem[idx + _991 + 32] = stor13[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[_991 + stor13.length.field_1 + 32] = 0x3133302e6a736f6e000000000000000000000000000000000000000000000000
                _1247 = mem[64]
                mem[mem[64]] = _991 + stor13.length.field_1 + -mem[64] + 8
                mem[64] = _991 + stor13.length.field_1 + 40
                if not ownerOf[stor9]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = stor9
                mem[32] = 6
                _1266 = mem[_1247]
                if stor6[stor9].field_0:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1266:
                        stor6[stor9][].field_0 = Array(len=_1266, data=mem[_1247 + 32 len _1266])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor6[stor9].field_0 == stor6[stor9].field_1 < 32:
                        revert with 0, 34
                    if _1266:
                        stor6[stor9][].field_0 = Array(len=_1266, data=mem[_1247 + 32 len _1266])
                    else:
                        stor6[stor9].field_0 = 0
                        idx = 0
                        while stor6[stor9].field_1 + 31 / 32 > idx:
                            stor6[stor9][idx].field_0 = 0
                            idx = idx + 1
                            continue 
    stor8 = 1
}



}
