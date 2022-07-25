contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
address stor7;
mapping of struct sub_8ee74912;
mapping of struct stor9;
array of struct stor10;
uint256 nextTokenId;
uint256 sub_25bb3a95;
uint256 sub_f3234f40;
uint8 mintEnabled;
uint256 stor14;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_25bb3a95(?) {
    return sub_25bb3a95
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

function nextTokenId() {
    return nextTokenId
}

function owner() {
    return owner
}

function sub_8ee74912(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    return sub_8ee74912[arg1][arg2[all]][arg3].field_0, sub_8ee74912[arg1][arg2[all]][arg3].field_256
}

function mintEnabled() {
    return bool(uint8(mintEnabled))
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function sub_f3234f40(?) {
    return sub_f3234f40
}

function donate() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3234f40 = arg1
}

function toggleMintEnabled() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14) = not uint8(mintEnabled) or Mask(248, 8, uint256(stor14))
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function sub_362790f6(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor9[arg1 << 240].field_0) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor9[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, sub_f3234f40, 0, uint16(arg1) << 192 >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 64, 64, msg.sender, arg2
}

function setBaseURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while stor10.length.field_1 % 128 + 31 / 32 > idx:
                stor10[idx].field_0 = 0
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

function sub_5f12a5ac(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor9[cd[4] << 240].field_0):
        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor9[cd[4] << 240].field_0 = 0
            idx = 0
            while (uint255(stor9[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor9[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor9[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor9[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor9[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor9[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor9[cd[4] << 240].field_0 = 0
            idx = 0
            while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor9[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor9[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor9[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor9[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
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

function sub_1c37a822(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if msg.sender != this.address:
        revert with 0, 'NBR: caller must be Bridge.'
    require arg4.length >= 64
    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
        revert with 0, 17
    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]):
        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20])
        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, mem[ceil32(ceil32(arg2.length)) + 161], 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function mint(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(mintEnabled):
        revert with 0, 'Mint is disabled'
    if arg1 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only mint 2 per tx greedy bastard'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    if balanceOf[address(msg.sender)] + arg1 > 4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can only mint 4 per account greedy bastard'
    if nextTokenId > !arg1:
        revert with 0, 17
    if nextTokenId + arg1 > sub_25bb3a95:
        revert with 0, 'You are late as fuck'
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor11 + 1]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor11 + 1] = msg.sender
    emit Transfer(0, msg.sender, nextTokenId + 1);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, nextTokenId + 1, 128, 0
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
    if 2 == arg1:
        if nextTokenId == -1:
            revert with 0, 17
        nextTokenId++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11 + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 0, 17
        balanceOf[address(msg.sender)]++
        ownerOf[stor11 + 1] = msg.sender
        emit Transfer(0, msg.sender, nextTokenId + 1);
        if ext_code.size(msg.sender):
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, nextTokenId + 1, 128, 0
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
                        mem[idx + 32] = stor0[s].field_256
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
                        mem[idx + 32] = stor0[s].field_256
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
                    mem[idx + 32] = stor0[s].field_256
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
                    mem[idx + 32] = stor0[s].field_256
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
                        mem[idx + 32] = stor1[s].field_256
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
                        mem[idx + 32] = stor1[s].field_256
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
                    mem[idx + 32] = stor1[s].field_256
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
                    mem[idx + 32] = stor1[s].field_256
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

function baseURI() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 < uint255(stor10.length) * 0.5:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor10.length.field_1 % 128:
                if 31 < stor10.length.field_1 % 128:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length), data=mem[128 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 < uint255(stor10.length) * 0.5:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor10.length.field_1 % 128:
            if 31 < stor10.length.field_1 % 128:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
    mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
    if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)], mem[(2 * ceil32(stor10.length.field_1 % 128)) + 192 len 2 * ceil32(stor10.length.field_1 % 128)]), 
}

function sub_7533d788(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9[arg1].field_0):
            if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor9[arg1].field_0):
                if 31 < uint255(stor9[arg1].field_0) * 0.5:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor9[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        else:
            if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor9[arg1].field_1 % 128:
                if 31 < stor9[arg1].field_1 % 128:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        mem[ceil32(uint255(stor9[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor9[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor9[arg1].field_0) * 0.5) > uint255(stor9[arg1].field_0) * 0.5:
            mem[(uint255(stor9[arg1].field_0) * 0.5) + ceil32(uint255(stor9[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[arg1].field_0), data=mem[128 len ceil32(uint255(stor9[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor9[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor9[arg1].field_0) * 0.5)]), 
    if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor9[arg1].field_0):
            if 31 < uint255(stor9[arg1].field_0) * 0.5:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor9[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
    else:
        if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor9[arg1].field_1 % 128:
            if 31 < stor9[arg1].field_1 % 128:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
    mem[ceil32(stor9[arg1].field_1 % 128) + 192 len ceil32(stor9[arg1].field_1 % 128)] = mem[128 len ceil32(stor9[arg1].field_1 % 128)]
    if ceil32(stor9[arg1].field_1 % 128) > stor9[arg1].field_1 % 128:
        mem[stor9[arg1].field_1 % 128 + ceil32(stor9[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
}

function sub_d1deba1f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(arg1 << 240, 8)
    if ceil32(arg2.length) <= arg2.length:
        _42 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NBR: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LZ: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0:
            revert with 0, 'LZ: invalid payload'
        stor[_42][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0 = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NBR: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LZ: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0:
            revert with 0, 'LZ: invalid payload'
        stor[_45][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0 = 0
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293 len ceil32(arg4.length) - arg4.length]), arg3 << 192, ceil32(arg2.length) + 160
    else:
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 261] = arg4.length
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + 293 len arg4.length] = arg4[all]
        mem[ceil32(arg2.length) + ceil32(ceil32(arg2.length)) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(ceil32(arg2.length)) + arg2.length + 293 len ceil32(arg4.length) - arg2.length + ceil32(arg2.length)]), arg3 << 192, ceil32(arg2.length) + 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must own the token to traverse'
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor9[arg1 << 240].field_0) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor9[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor2[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor2[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = sub_f3234f40
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, sub_f3234f40, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, sub_f3234f40, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Not enough value to cover messageFee. Send more value for traverse fees'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = uint255(stor9[arg1 << 240].field_0) * 0.5
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(stor7)
            call stor7.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor9[arg1 << 240].field_0) * 0.5:
                    mem[idx + ceil32(return_data.size) + 486] = stor9[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, sub_f3234f40, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor7)
                call stor7.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = stor9[arg1 << 240].field_1 % 128
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(stor7)
            call stor7.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor9[arg1 << 240].field_1 % 128:
                    mem[idx + ceil32(return_data.size) + 486] = stor9[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor9[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor9[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[arg1 << 240].field_1 % 128) + 320, stor9[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor9[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, sub_f3234f40, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor7)
                call stor7.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        mem[96] = uint255(stor10.length) * 0.5
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10.length):
                if uint255(stor10.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            _3686 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3686)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3686)]
                            if ceil32(_3686) > _3686:
                                mem[_3686 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3686) + 32], 
                        _3687 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3687)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3687)]
                        if ceil32(_3687) > _3687:
                            mem[_3687 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3687) + 32], 
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3688 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3688)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3688)]
                        if ceil32(_3688) > _3688:
                            mem[_3688 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3688) + 32], 
                    _3689 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3689)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3689)]
                    if ceil32(_3689) > _3689:
                        mem[_3689 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3689) + 32], 
                mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3690 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3690)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3690)]
                        if ceil32(_3690) > _3690:
                            mem[_3690 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3690) + 32], 
                    _3691 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3691)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3691)]
                    if ceil32(_3691) > _3691:
                        mem[_3691 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3691) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3692 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3692)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3692)]
                    if ceil32(_3692) > _3692:
                        mem[_3692 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3692) + 32], 
                _3693 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3693)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3693)]
                if ceil32(_3693) > _3693:
                    mem[_3693 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3693) + 32], 
            if 31 >= uint255(stor10.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
                if uint255(stor10.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
                    return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 0, 65
                mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 0, 17
                        if 48 > !(idx % 10):
                            revert with 0, 17
                        if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            revert with 0, 50
                        mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                        mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                            _3694 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3694)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3694)]
                            if ceil32(_3694) > _3694:
                                mem[_3694 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3694) + 32], 
                        _3695 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3695)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3695)]
                        if ceil32(_3695) > _3695:
                            mem[_3695 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3695) + 32], 
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3696 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3696)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3696)]
                        if ceil32(_3696) > _3696:
                            mem[_3696 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3696) + 32], 
                    _3697 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3697)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3697)]
                    if ceil32(_3697) > _3697:
                        mem[_3697 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3697) + 32], 
                mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3698 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3698)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3698)]
                        if ceil32(_3698) > _3698:
                            mem[_3698 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3698) + 32], 
                    _3699 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3699)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3699)]
                    if ceil32(_3699) > _3699:
                        mem[_3699 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3699) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3700 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3700)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3700)]
                    if ceil32(_3700) > _3700:
                        mem[_3700 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3700) + 32], 
                _3701 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3701)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3701)]
                if ceil32(_3701) > _3701:
                    mem[_3701 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3701) + 32], 
            mem[0] = 10
            mem[128] = uint256(stor10.field_0)
            idx = 128
            s = 0
            while (uint255(stor10.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor10.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _4406 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4406)]
                        if ceil32(_4406) > _4406:
                            mem[_4406 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4406) + 32], 
                    _4407 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4407)]
                    if ceil32(_4407) > _4407:
                        mem[_4407 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4407) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4408 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4408)]
                    if ceil32(_4408) > _4408:
                        mem[_4408 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4408) + 32], 
                _4409 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4409)]
                if ceil32(_4409) > _4409:
                    mem[_4409 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4409) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4410 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4410)]
                    if ceil32(_4410) > _4410:
                        mem[_4410 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4410) + 32], 
                _4411 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4411)]
                if ceil32(_4411) > _4411:
                    mem[_4411 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4411) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4412 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4412)]
                if ceil32(_4412) > _4412:
                    mem[_4412 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4412) + 32], 
            _4413 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4413)]
            if ceil32(_4413) > _4413:
                mem[_4413 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4413) + 32], 
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor10.length.field_1 % 128:
            if uint255(stor10.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3702 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3702)]
                        if ceil32(_3702) > _3702:
                            mem[_3702 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3702) + 32], 
                    _3703 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3703)]
                    if ceil32(_3703) > _3703:
                        mem[_3703 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3703) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3704 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3704)]
                    if ceil32(_3704) > _3704:
                        mem[_3704 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3704) + 32], 
                _3705 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3705)]
                if ceil32(_3705) > _3705:
                    mem[_3705 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3705) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3706 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[_3706 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3706) + 32], 
                _3707 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[_3707 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3707) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _3708 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[_3708 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3708) + 32], 
            _3709 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[_3709 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3709) + 32], 
        if 31 >= stor10.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            if uint255(stor10.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
                return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                        _3710 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3710)]
                        if ceil32(_3710) > _3710:
                            mem[_3710 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3710) + 32], 
                    _3711 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3711)]
                    if ceil32(_3711) > _3711:
                        mem[_3711 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3711) + 32], 
                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3712 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3712)]
                    if ceil32(_3712) > _3712:
                        mem[_3712 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3712) + 32], 
                _3713 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3713)]
                if ceil32(_3713) > _3713:
                    mem[_3713 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3713) + 32], 
            mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _3714 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3714)]
                    if ceil32(_3714) > _3714:
                        mem[_3714 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3714) + 32], 
                _3715 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3715)]
                if ceil32(_3715) > _3715:
                    mem[_3715 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3715) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _3716 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3716)]
                if ceil32(_3716) > _3716:
                    mem[_3716 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3716) + 32], 
            _3717 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_3717)]
            if ceil32(_3717) > _3717:
                mem[_3717 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_3717) + 32], 
        mem[0] = 10
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while stor10.length.field_1 % 128 + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor10.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = '0'
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = mem[ceil32(uint255(stor10.length) * 0.5) + 192]
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 192]:
                return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 192], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192])]), 
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 192] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = 0
            return 32, mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(uint255(stor10.length) * 0.5) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
            if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                    _4414 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4414)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4414)]
                    if ceil32(_4414) > _4414:
                        mem[_4414 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4414) + 32], 
                _4415 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4415)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4415)]
                if ceil32(_4415) > _4415:
                    mem[_4415 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4415) + 32], 
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4416 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4416)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4416)]
                if ceil32(_4416) > _4416:
                    mem[_4416 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4416) + 32], 
            _4417 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4417)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4417)]
            if ceil32(_4417) > _4417:
                mem[_4417 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4417) + 32], 
        mem[ceil32(uint255(stor10.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor10.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
        if ceil32(uint255(stor10.length) * 0.5) <= uint255(stor10.length) * 0.5:
            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
            mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
                _4418 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4418)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4418)]
                if ceil32(_4418) > _4418:
                    mem[_4418 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4418) + 32], 
            _4419 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4419)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4419)]
            if ceil32(_4419) > _4419:
                mem[_4419 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4419) + 32], 
        mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
        mem[64] = mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128]) <= mem[ceil32(uint255(stor10.length) * 0.5) + 128]:
            _4420 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4420)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4420)]
            if ceil32(_4420) > _4420:
                mem[_4420 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4420) + 32], 
        _4421 = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(_4421)] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(_4421)]
        if ceil32(_4421) > _4421:
            mem[_4421 + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
        return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(_4421) + 32], 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor10.length.field_1 % 128
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor10.length):
            if stor10.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor10.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                        _3718 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3718)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3719)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3719) + 32], 
                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3720 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3720)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3721)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3722 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3722)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3723)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3723) + 32], 
            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3724 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3724)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3725)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor10.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            if stor10.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[ceil32(stor10.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                        _3726 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3726)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3727)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3727) + 32], 
                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3728 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3728)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3729)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3730 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3730)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3731)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3731) + 32], 
            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3732 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3732)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3733)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3733) + 32], 
        mem[0] = 10
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while (uint255(stor10.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor10.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _4422 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4422)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4422) + 32], 
                _4423 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4423)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4423) + 32], 
            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _4424 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4424)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4424) + 32], 
            _4425 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4425)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _4426 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4426)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4426) + 32], 
            _4427 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4427)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4427) + 32], 
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            _4428 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4428)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4428) + 32], 
        _4429 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4429)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4429) + 32], 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor10.length.field_1 % 128:
        if stor10.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3734 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3734)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3735)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3735) + 32], 
            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3736 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3736)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3737)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3738 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3738)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3739)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3739) + 32], 
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            _3740 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3740)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3741)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor10.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        if stor10.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 0, 65
        mem[ceil32(stor10.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                    _3742 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3742)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3743)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3743) + 32], 
            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3744 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3744)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3745)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _3746 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3746)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3747)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3747) + 32], 
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            _3748 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3748)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_3749)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_3749) + 32], 
    mem[0] = 10
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while stor10.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor10.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) <= mem[ceil32(stor10.length.field_1 % 128) + 192]:
            return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
        mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
        return 32, mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[ceil32(stor10.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                _4430 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4430)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4430) + 32], 
            _4431 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4431)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4431) + 32], 
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            _4432 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4432)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4432) + 32], 
        _4433 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4433)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
    if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
            _4434 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4434)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4434) + 32], 
        _4435 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4435)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4435) + 32], 
    mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128]) <= mem[ceil32(stor10.length.field_1 % 128) + 128]:
        _4436 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4436)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4436) + 32], 
    _4437 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_4437)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(_4437) + 32], 
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x70a08231(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb88d4fde(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x943fb872(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return owner
                        if uint32(call.func_hash) >> 224 != unknown_0x8ee74912(?????):
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == uint16(cd[4])
                        require cd[36] <= test266151307()
                        require cd[36] + 35 < calldata.size
                        if ('cd', 36).length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                            revert with 0, 65
                        require cd[36] + ('cd', 36).length + 36 <= calldata.size
                        return sub_8ee74912[cd[4]][call.data[cd[36] + 36 len ('cd', 36).length]][cd[68]].field_0, 
                               sub_8ee74912[cd[4]][call.data[cd[36] + 36 len ('cd', 36).length]][cd[68]].field_256
                    if unknown_0x943fb872(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_f3234f40 = cd[4]
                    if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                        if unknown_0xa22cb465(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == address(cd[4])
                            require cd[36] == bool(cd[36])
                            if msg.sender == address(cd[4]):
                                revert with 0, 'ERC721: approve to caller'
                            stor5[msg.sender][address(cd[4])] = uint8(bool(cd[36]))
                            emit ApprovalForAll(bool(cd[36]), msg.sender, address(cd[4]));
                    require not msg.value
                    if bool(stor1.length):
                        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor1.length):
                            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor1.length):
                                if 31 < uint255(stor1.length) * 0.5:
                                    mem[160] = uint256(stor1.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor1.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor1[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor1.length.field_8)
                        else:
                            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor1.length.field_1 % 128:
                                if 31 < stor1.length.field_1 % 128:
                                    mem[160] = uint256(stor1.field_0)
                                    idx = 160
                                    s = 0
                                    while stor1.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor1[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                                mem[160] = 256 * Mask(248, 0, stor1.length.field_8)
                        mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
                    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                        revert with 0, 34
                    if bool(stor1.length):
                        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1.length):
                            if 31 < uint255(stor1.length) * 0.5:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor1.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor1.length.field_8)
                    else:
                        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if stor1.length.field_1 % 128:
                            if 31 < stor1.length.field_1 % 128:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while stor1.length.field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1 % 128)])
                            mem[160] = 256 * Mask(248, 0, stor1.length.field_8)
                    mem[ceil32(stor1.length.field_1 % 128) + 224 len ceil32(stor1.length.field_1 % 128)] = mem[160 len ceil32(stor1.length.field_1 % 128)]
                    if ceil32(stor1.length.field_1 % 128) > stor1.length.field_1 % 128:
                        mem[stor1.length.field_1 % 128 + ceil32(stor1.length.field_1 % 128) + 224] = 0
                    return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 224 len 2 * ceil32(stor1.length.field_1 % 128)]), 
                if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not address(cd[4]):
                        revert with 0, 'ERC721: balance query for the zero address'
                    return balanceOf[address(cd[4])]
                if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    owner = 0
                    emit OwnershipTransferred(owner, 0);
                if uint32(call.func_hash) >> 224 != unknown_0x7533d788(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x75794a3c(?????):
                    require not msg.value
                    return nextTokenId
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == uint16(cd[4])
                if bool(stor9[cd[4]].field_0):
                    if bool(stor9[cd[4]].field_0) == uint255(stor9[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor9[cd[4]].field_0):
                        if bool(stor9[cd[4]].field_0) == uint255(stor9[cd[4]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor9[cd[4]].field_0):
                            if 31 < uint255(stor9[cd[4]].field_0) * 0.5:
                                mem[160] = stor9[cd[4]].field_0
                                idx = 160
                                s = 0
                                while (uint255(stor9[cd[4]].field_0) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor9[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor9[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor9[cd[4]].field_0) * 0.5)])
                            mem[160] = 256 * Mask(248, 0, stor9[cd[4]].field_8)
                    else:
                        if bool(stor9[cd[4]].field_0) == stor9[cd[4]].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor9[cd[4]].field_1 % 128:
                            if 31 < stor9[cd[4]].field_1 % 128:
                                mem[160] = stor9[cd[4]].field_0
                                idx = 160
                                s = 0
                                while stor9[cd[4]].field_1 % 128 + 128 > idx:
                                    mem[idx + 32] = stor9[cd[4]][s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor9[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor9[cd[4]].field_0) * 0.5)])
                            mem[160] = 256 * Mask(248, 0, stor9[cd[4]].field_8)
                    mem[ceil32(uint255(stor9[cd[4]].field_0) * 0.5) + 224 len ceil32(uint255(stor9[cd[4]].field_0) * 0.5)] = mem[160 len ceil32(uint255(stor9[cd[4]].field_0) * 0.5)]
                    if ceil32(uint255(stor9[cd[4]].field_0) * 0.5) > uint255(stor9[cd[4]].field_0) * 0.5:
                        mem[(uint255(stor9[cd[4]].field_0) * 0.5) + ceil32(uint255(stor9[cd[4]].field_0) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor9[cd[4]].field_0), data=mem[160 len ceil32(uint255(stor9[cd[4]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor9[cd[4]].field_0) * 0.5)) + 224 len 2 * ceil32(uint255(stor9[cd[4]].field_0) * 0.5)]), 
                if bool(stor9[cd[4]].field_0) == stor9[cd[4]].field_1 % 128 < 32:
                    revert with 0, 34
                if bool(stor9[cd[4]].field_0):
                    if bool(stor9[cd[4]].field_0) == uint255(stor9[cd[4]].field_0) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor9[cd[4]].field_0):
                        if 31 < uint255(stor9[cd[4]].field_0) * 0.5:
                            mem[160] = stor9[cd[4]].field_0
                            idx = 160
                            s = 0
                            while (uint255(stor9[cd[4]].field_0) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor9[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor9[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor9[cd[4]].field_1 % 128)])
                        mem[160] = 256 * Mask(248, 0, stor9[cd[4]].field_8)
                else:
                    if bool(stor9[cd[4]].field_0) == stor9[cd[4]].field_1 % 128 < 32:
                        revert with 0, 34
                    if stor9[cd[4]].field_1 % 128:
                        if 31 < stor9[cd[4]].field_1 % 128:
                            mem[160] = stor9[cd[4]].field_0
                            idx = 160
                            s = 0
                            while stor9[cd[4]].field_1 % 128 + 128 > idx:
                                mem[idx + 32] = stor9[cd[4]][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor9[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor9[cd[4]].field_1 % 128)])
                        mem[160] = 256 * Mask(248, 0, stor9[cd[4]].field_8)
                mem[ceil32(stor9[cd[4]].field_1 % 128) + 224 len ceil32(stor9[cd[4]].field_1 % 128)] = mem[160 len ceil32(stor9[cd[4]].field_1 % 128)]
                if ceil32(stor9[cd[4]].field_1 % 128) > stor9[cd[4]].field_1 % 128:
                    mem[stor9[cd[4]].field_1 % 128 + ceil32(stor9[cd[4]].field_1 % 128) + 224] = 0
                return Array(len=stor9[cd[4]].field_0 % 128, data=mem[160 len ceil32(stor9[cd[4]].field_1 % 128)], mem[(2 * ceil32(stor9[cd[4]].field_1 % 128)) + 224 len 2 * ceil32(stor9[cd[4]].field_1 % 128)]), 
            if unknown_0xd1deba1f(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xed88c68e(?????) <= uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xed88c68e(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xf3234f40(?????):
                            require not msg.value
                            return sub_f3234f40
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xd1deba1f(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xe985e9c5(?????):
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return bool(stor5[address(cd[4])][address(cd[36])])
                    require calldata.size - 4 >= 128
                    require cd[4] == uint16(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    require cd[68] == uint64(cd[68])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    require ('cd', 100).length <= test266151307()
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[ceil32(ceil32(('cd', 36).length)) + 129 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], mem[('cd', 36).length + 160 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + 129] = sha3(cd[4] << 240, 8)
                    if ceil32(('cd', 36).length) <= ('cd', 36).length:
                        _4375 = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])
                        if not stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 129, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36)))))))), ('add', 32, ('cd', ('add', 4, ('cd', 36))))))))].field_0:
                            revert with 0, 'NBR: no stored message'
                        if ('cd', 100).length != stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])][cd[68] << 192]:
                            revert with 0, 'LZ: invalid payload'
                        mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + ceil32(ceil32(('cd', 36).length)) + 129] = 0
                        if sha3(call.data[cd[100] + 36 len ('cd', 100).length]) != stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('var', '_4375'))].field_0:
                            revert with 0, 'LZ: invalid payload'
                        stor[_4375][cd[68] << 192] = 0
                        stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('var', '_4375'))].field_0 = 0
                    else:
                        _4378 = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])
                        if not stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 129, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36)))))))), ('add', 32, ('cd', ('add', 4, ('cd', 36))))))))].field_0:
                            revert with 0, 'NBR: no stored message'
                        if ('cd', 100).length != stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 36).length + 32])][cd[68] << 192]:
                            revert with 0, 'LZ: invalid payload'
                        mem[ceil32(ceil32(('cd', 36).length)) + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[('cd', 100).length + ceil32(ceil32(('cd', 36).length)) + 129] = 0
                        if sha3(call.data[cd[100] + 36 len ('cd', 100).length]) != stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('var', '_4378'))].field_0:
                            revert with 0, 'LZ: invalid payload'
                        stor[_4378][cd[68] << 192] = 0
                        stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('var', '_4378'))].field_0 = 0
                    if ceil32(('cd', 36).length) <= ('cd', 36).length:
                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + 325 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ('cd', 100).length + 325] = 0
                        require ext_code.size(this.address)
                        call this.address.0x1c37a822 with:
                             gas gas_remaining wei
                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], 0) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], mem[ceil32(ceil32(('cd', 36).length)) + ceil32(('cd', 36).length) + ('cd', 100).length + 325 len ceil32(('cd', 100).length) - ('cd', 100).length]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                    else:
                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + 293] = ('cd', 100).length
                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + 325 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ('cd', 100).length + 325] = 0
                        require ext_code.size(this.address)
                        call this.address.0x1c37a822 with:
                             gas gas_remaining wei
                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], 0) << (8 * ceil32(('cd', 36).length)) - 256, Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ('cd', 36).length + 325 len ceil32(('cd', 100).length) - ('cd', 36).length + ceil32(('cd', 36).length)]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xb88d4fde(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    if ('cd', 100).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 100).length)) + 129 < 128 or ceil32(ceil32(('cd', 100).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 100).length
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[160 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: operator query for nonexistent token'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != msg.sender:
                        if not ownerOf[cd[68]]:
                            revert with 0, 'ERC721: approved query for nonexistent token'
                        if approved[cd[68]] != msg.sender:
                            if not stor5[stor2[cd[68]]][address(msg.sender)]:
                                revert with 0, 'ERC721: transfer caller is not owner nor approved'
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[68]] != address(cd[4]):
                        revert with 0, 'ERC721: transfer of token that is not own'
                    if not address(cd[36]):
                        revert with 0, 'ERC721: transfer to the zero address'
                    approved[cd[68]] = 0
                    if not ownerOf[cd[68]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[68]], 0, cd[68]);
                    if balanceOf[address(cd[4])] < 1:
                        revert with 0, 17
                    balanceOf[address(cd[4])]--
                    if balanceOf[address(cd[36])] > -2:
                        revert with 0, 17
                    balanceOf[address(cd[36])]++
                    ownerOf[cd[68]] = address(cd[36])
                    emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                    if ext_code.size(address(cd[36])):
                        mem[ceil32(ceil32(('cd', 100).length)) + 133] = msg.sender
                        mem[ceil32(ceil32(('cd', 100).length)) + 165] = address(cd[4])
                        mem[ceil32(ceil32(('cd', 100).length)) + 197] = cd[68]
                        mem[ceil32(ceil32(('cd', 100).length)) + 229] = 128
                        mem[ceil32(ceil32(('cd', 100).length)) + 261] = ('cd', 100).length
                        mem[ceil32(ceil32(('cd', 100).length)) + 293 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256, msg.sender) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 27) + 256
                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                            mem[('cd', 100).length + ceil32(ceil32(('cd', 100).length)) + 293] = 0
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(cd[4]), cd[68], Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
                        mem[ceil32(ceil32(('cd', 100).length)) + 129] = ext_call.return_data[0]
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
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if unknown_0xc87b56dd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        mem[0] = cd[4]
                        mem[32] = 2
                        if not ownerOf[cd[4]]:
                            revert with 0, 'ERC721Metadata: URI query for nonexistent token'
                        if bool(stor10.length):
                            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor10.length):
                                if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor10.length):
                                    if 31 >= uint255(stor10.length) * 0.5:
                                        mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                                        if uint255(stor10.length) * 0.5 <= 0:
                                            return ''
                                        if not cd[4]:
                                            mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 256] = '0'
                                            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = 32
                                            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = mem[ceil32(uint255(stor10.length) * 0.5) + 224]
                                            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])] = mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]
                                            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224]) > mem[ceil32(uint255(stor10.length) * 0.5) + 224]:
                                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 224] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321] = 0
                                            return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 224], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]), 
                                        s = 0
                                        idx = cd[4]
                                        while idx:
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            idx = idx / 10
                                            continue 
                                        if s > test266151307():
                                            revert with 0, 65
                                        mem[ceil32(uint255(stor10.length) * 0.5) + 160] = s
                                        if s:
                                            mem[ceil32(uint255(stor10.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                        t = s
                                        idx = cd[4]
                                        while idx:
                                            if t < 1:
                                                revert with 0, 17
                                            if 48 > !(idx % 10):
                                                revert with 0, 17
                                            if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 160]:
                                                revert with 0, 50
                                            mem[t + ceil32(uint255(stor10.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                            t = t - 1
                                            idx = idx / 10
                                            continue 
                                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                                            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224] = 0
                                        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])]
                                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = 32
                                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]
                                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]
                                        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]) > mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]:
                                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] + mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288] = 0
                                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]), 
                                    mem[160] = uint256(stor10.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor10.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if uint255(stor10.length) * 0.5 <= 0:
                                    return ''
                                if not cd[4]:
                                    mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 256] = '0'
                                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = 32
                                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = mem[ceil32(uint255(stor10.length) * 0.5) + 224]
                                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])] = mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]
                                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224]) > mem[ceil32(uint255(stor10.length) * 0.5) + 224]:
                                        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 224] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321] = 0
                                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 224], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]), 
                                s = 0
                                idx = cd[4]
                                while idx:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    idx = idx / 10
                                    continue 
                                if s > test266151307():
                                    revert with 0, 65
                                mem[ceil32(uint255(stor10.length) * 0.5) + 160] = s
                                if s:
                                    mem[ceil32(uint255(stor10.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(uint255(stor10.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224] = 0
                                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])]
                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = 32
                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]
                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]
                                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]) <= mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]:
                                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]), 
                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] + mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288] = 0
                                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]) + 32], 
                            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor10.length.field_1 % 128:
                                if 31 >= stor10.length.field_1 % 128:
                                    mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                                else:
                                    mem[160] = uint256(stor10.field_0)
                                    idx = 160
                                    s = 0
                                    while stor10.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor10[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                            if uint255(stor10.length) * 0.5 <= 0:
                                return ''
                            if not cd[4]:
                                mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 256] = '0'
                                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 257] = 32
                                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 289] = mem[ceil32(uint255(stor10.length) * 0.5) + 224]
                                mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])] = mem[ceil32(uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]
                                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224]) > mem[ceil32(uint255(stor10.length) * 0.5) + 224]:
                                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 224] + ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321] = 0
                                return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + 224], data=mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 321 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 224])]), 
                            s = 0
                            idx = cd[4]
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            mem[ceil32(uint255(stor10.length) * 0.5) + 160] = s
                            if s:
                                mem[ceil32(uint255(stor10.length) * 0.5) + 192 len s] = call.data[calldata.size len s]
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(uint255(stor10.length) * 0.5) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(uint255(stor10.length) * 0.5) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                            if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                                mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224] = 0
                            mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 160])]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = 32
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]
                            mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]
                            if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]) > mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192]:
                                mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] + mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288] = 0
                            return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 160] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 288 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192])]), 
                        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                            revert with 0, 34
                        mem[128] = stor10.length.field_1 % 128
                        if bool(stor10.length):
                            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor10.length):
                                if stor10.length.field_1 % 128 <= 0:
                                    return ''
                                if not cd[4]:
                                    mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                                    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                                s = 0
                                idx = cd[4]
                                while idx:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    idx = idx / 10
                                    continue 
                                if s > test266151307():
                                    revert with 0, 65
                                mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                                if not s:
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                    if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                            _16172 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16172)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16172)]
                                            if ceil32(_16172) > _16172:
                                                mem[_16172 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16172) + 32], 
                                        _16173 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16173)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16173)]
                                        if ceil32(_16173) > _16173:
                                            mem[_16173 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16173) + 32], 
                                    mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16174 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16174)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16174)]
                                        if ceil32(_16174) > _16174:
                                            mem[_16174 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16174) + 32], 
                                    _16175 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16175)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16175)]
                                    if ceil32(_16175) > _16175:
                                        mem[_16175 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16175) + 32], 
                                mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16176 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16176)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16176)]
                                        if ceil32(_16176) > _16176:
                                            mem[_16176 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16176) + 32], 
                                    _16177 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16177)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16177)]
                                    if ceil32(_16177) > _16177:
                                        mem[_16177 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16177) + 32], 
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16178 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16178)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16178)]
                                    if ceil32(_16178) > _16178:
                                        mem[_16178 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16178) + 32], 
                                _16179 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16179)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16179)]
                                if ceil32(_16179) > _16179:
                                    mem[_16179 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16179) + 32], 
                            if 31 >= uint255(stor10.length) * 0.5:
                                mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                                if stor10.length.field_1 % 128 <= 0:
                                    return ''
                                if not cd[4]:
                                    mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                                    mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                                    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                                s = 0
                                idx = cd[4]
                                while idx:
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    idx = idx / 10
                                    continue 
                                if s > test266151307():
                                    revert with 0, 65
                                mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                                if not s:
                                    t = s
                                    idx = cd[4]
                                    while idx:
                                        if t < 1:
                                            revert with 0, 17
                                        if 48 > !(idx % 10):
                                            revert with 0, 17
                                        if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                            revert with 0, 50
                                        mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                        t = t - 1
                                        idx = idx / 10
                                        continue 
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                    if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                            _16180 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16180)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16180)]
                                            if ceil32(_16180) > _16180:
                                                mem[_16180 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16180) + 32], 
                                        _16181 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16181)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16181)]
                                        if ceil32(_16181) > _16181:
                                            mem[_16181 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16181) + 32], 
                                    mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16182 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16182)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16182)]
                                        if ceil32(_16182) > _16182:
                                            mem[_16182 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16182) + 32], 
                                    _16183 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16183)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16183)]
                                    if ceil32(_16183) > _16183:
                                        mem[_16183 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16183) + 32], 
                                mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16184 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16184)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16184)]
                                        if ceil32(_16184) > _16184:
                                            mem[_16184 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16184) + 32], 
                                    _16185 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16185)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16185)]
                                    if ceil32(_16185) > _16185:
                                        mem[_16185 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16185) + 32], 
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16186 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16186)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16186)]
                                    if ceil32(_16186) > _16186:
                                        mem[_16186 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16186) + 32], 
                                _16187 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16187)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16187)]
                                if ceil32(_16187) > _16187:
                                    mem[_16187 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16187) + 32], 
                            mem[0] = 10
                            mem[160] = uint256(stor10.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor10.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor10[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if stor10.length.field_1 % 128 <= 0:
                                return ''
                            if not cd[4]:
                                mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                            s = 0
                            idx = cd[4]
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                            if not s:
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                        _18156 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18156)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18156)]
                                        if ceil32(_18156) > _18156:
                                            mem[_18156 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18156) + 32], 
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 0
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    _18157 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18157)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18157)]
                                    if ceil32(_18157) > _18157:
                                        mem[_18157 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18157) + 32], 
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _18158 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18158)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18158)]
                                    if ceil32(_18158) > _18158:
                                        mem[_18158 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18158) + 32], 
                                _18159 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18159)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18159)]
                                if ceil32(_18159) > _18159:
                                    mem[_18159 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18159) + 32], 
                            mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _18160 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18160)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18160)]
                                    if ceil32(_18160) > _18160:
                                        mem[_18160 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18160) + 32], 
                                _18161 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18161)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18161)]
                                if ceil32(_18161) > _18161:
                                    mem[_18161 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18161) + 32], 
                            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                _18162 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18162)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18162)]
                                if ceil32(_18162) > _18162:
                                    mem[_18162 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18162) + 32], 
                            _18163 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18163)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18163)]
                            if ceil32(_18163) > _18163:
                                mem[_18163 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18163) + 32], 
                        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if not stor10.length.field_1 % 128:
                            if stor10.length.field_1 % 128 <= 0:
                                return ''
                            if not cd[4]:
                                mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                            s = 0
                            idx = cd[4]
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                            if not s:
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16188 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16188)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16188)]
                                        if ceil32(_16188) > _16188:
                                            mem[_16188 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16188) + 32], 
                                    _16189 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16189)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16189)]
                                    if ceil32(_16189) > _16189:
                                        mem[_16189 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16189) + 32], 
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16190 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16190)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16190)]
                                    if ceil32(_16190) > _16190:
                                        mem[_16190 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16190) + 32], 
                                _16191 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16191)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16191)]
                                if ceil32(_16191) > _16191:
                                    mem[_16191 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16191) + 32], 
                            mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16192 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16192)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16192)]
                                    if ceil32(_16192) > _16192:
                                        mem[_16192 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16192) + 32], 
                                _16193 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16193)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16193)]
                                if ceil32(_16193) > _16193:
                                    mem[_16193 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16193) + 32], 
                            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                _16194 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16194)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16194)]
                                if ceil32(_16194) > _16194:
                                    mem[_16194 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16194) + 32], 
                            _16195 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16195)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16195)]
                            if ceil32(_16195) > _16195:
                                mem[_16195 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16195) + 32], 
                        if 31 >= stor10.length.field_1 % 128:
                            mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                            if stor10.length.field_1 % 128 <= 0:
                                return ''
                            if not cd[4]:
                                mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                                return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                            s = 0
                            idx = cd[4]
                            while idx:
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = idx / 10
                                continue 
                            if s > test266151307():
                                revert with 0, 65
                            mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                            if not s:
                                t = s
                                idx = cd[4]
                                while idx:
                                    if t < 1:
                                        revert with 0, 17
                                    if 48 > !(idx % 10):
                                        revert with 0, 17
                                    if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        revert with 0, 50
                                    mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                    t = t - 1
                                    idx = idx / 10
                                    continue 
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                                if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                        _16196 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16196)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16196)]
                                        if ceil32(_16196) > _16196:
                                            mem[_16196 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16196) + 32], 
                                    _16197 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16197)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16197)]
                                    if ceil32(_16197) > _16197:
                                        mem[_16197 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16197) + 32], 
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16198 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16198)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16198)]
                                    if ceil32(_16198) > _16198:
                                        mem[_16198 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16198) + 32], 
                                _16199 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16199)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16199)]
                                if ceil32(_16199) > _16199:
                                    mem[_16199 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16199) + 32], 
                            mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    _16200 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16200)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16200)]
                                    if ceil32(_16200) > _16200:
                                        mem[_16200 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16200) + 32], 
                                _16201 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16201)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16201)]
                                if ceil32(_16201) > _16201:
                                    mem[_16201 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16201) + 32], 
                            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                _16202 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16202)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16202)]
                                if ceil32(_16202) > _16202:
                                    mem[_16202 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16202) + 32], 
                            _16203 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_16203)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_16203)]
                            if ceil32(_16203) > _16203:
                                mem[_16203 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_16203) + 32], 
                        mem[0] = 10
                        mem[160] = uint256(stor10.field_0)
                        idx = 160
                        s = 0
                        while stor10.length.field_1 % 128 + 128 > idx:
                            mem[idx + 32] = stor10[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        if stor10.length.field_1 % 128 <= 0:
                            return ''
                        if not cd[4]:
                            mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 256] = '0'
                            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = 32
                            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = mem[ceil32(stor10.length.field_1 % 128) + 224]
                            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])] = mem[ceil32(stor10.length.field_1 % 128) + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224]) > mem[ceil32(stor10.length.field_1 % 128) + 224]:
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 224] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321] = 0
                            return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 224], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 321 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 224])]), 
                        s = 0
                        idx = cd[4]
                        while idx:
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = idx / 10
                            continue 
                        if s > test266151307():
                            revert with 0, 65
                        mem[ceil32(stor10.length.field_1 % 128) + 160] = s
                        if not s:
                            t = s
                            idx = cd[4]
                            while idx:
                                if t < 1:
                                    revert with 0, 17
                                if 48 > !(idx % 10):
                                    revert with 0, 17
                                if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    revert with 0, 50
                                mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                                t = t - 1
                                idx = idx / 10
                                continue 
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                                mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                                if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                    mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                    _18164 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                    mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18164)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18164)]
                                    if ceil32(_18164) > _18164:
                                        mem[_18164 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                    return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18164) + 32], 
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 0
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                _18165 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18165)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18165)]
                                if ceil32(_18165) > _18165:
                                    mem[_18165 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18165) + 32], 
                            mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                _18166 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18166)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18166)]
                                if ceil32(_18166) > _18166:
                                    mem[_18166 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18166) + 32], 
                            _18167 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18167)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18167)]
                            if ceil32(_18167) > _18167:
                                mem[_18167 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18167) + 32], 
                        mem[ceil32(stor10.length.field_1 % 128) + 192 len s] = call.data[calldata.size len s]
                        t = s
                        idx = cd[4]
                        while idx:
                            if t < 1:
                                revert with 0, 17
                            if 48 > !(idx % 10):
                                revert with 0, 17
                            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                revert with 0, 50
                            mem[t + ceil32(stor10.length.field_1 % 128) + 191 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                            t = t - 1
                            idx = idx / 10
                            continue 
                        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                        if ceil32(stor10.length.field_1 % 128) <= stor10.length.field_1 % 128:
                            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                                mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                                _18168 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                                mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18168)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18168)]
                                if ceil32(_18168) > _18168:
                                    mem[_18168 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                                return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18168) + 32], 
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 0
                            mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                            _18169 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18169)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18169)]
                            if ceil32(_18169) > _18169:
                                mem[_18169 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18169) + 32], 
                        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224] = 0
                        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160])]
                        mem[64] = mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = 32
                        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + 160]:
                            _18170 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                            mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18170)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18170)]
                            if ceil32(_18170) > _18170:
                                mem[_18170 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                            return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18170) + 32], 
                        _18171 = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192]
                        mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288 len ceil32(_18171)] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 224 len ceil32(_18171)]
                        if ceil32(_18171) > _18171:
                            mem[_18171 + mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 288] = 0
                        return 32, mem[mem[ceil32(stor10.length.field_1 % 128) + 160] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(_18171) + 32], 
                    if uint32(call.func_hash) >> 224 != unknown_0xcf89fa03(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xd1239730(?????):
                        require not msg.value
                        return bool(uint8(mintEnabled))
                    require calldata.size - 4 >= 64
                    require cd[4] == uint16(cd[4])
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if ownerOf[cd[36]] != msg.sender:
                        revert with 0, 'You must own the token to traverse'
                    if bool(stor9[cd[4] << 240].field_0):
                        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if uint255(stor9[cd[4] << 240].field_0) * 0.5 <= 0:
                            revert with 0, 'This chain is currently unavailable for travel'
                    else:
                        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor9[cd[4] << 240].field_1 % 128 <= 0:
                            revert with 0, 'This chain is currently unavailable for travel'
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    approved[cd[36]] = 0
                    if not ownerOf[cd[36]]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    emit Approval(ownerOf[cd[36]], 0, cd[36]);
                    if balanceOf[stor2[cd[36]]] < 1:
                        revert with 0, 17
                    balanceOf[stor2[cd[36]]]--
                    ownerOf[cd[36]] = 0
                    emit Transfer(ownerOf[cd[36]], 0, cd[36]);
                    mem[192] = cd[36]
                    mem[256] = 0x1000000000000000000000000000000000000000000000000000000000000
                    mem[258] = sub_f3234f40
                    mem[224] = 34
                    mem[326] = this.address
                    mem[358] = 160
                    mem[454] = 64
                    mem[486 len 64] = msg.sender, cd[36]
                    mem[390] = 0
                    mem[422] = 256
                    mem[550] = 34
                    mem[582 len 64] = 0, sub_f3234f40, 0, uint16(cd[4]) << 192
                    mem[616] = 0
                    require ext_code.size(stor7)
                    staticcall stor7.0x40a7bb10 with:
                            gas gas_remaining wei
                           args cd[4] << 240, address(this.address), 160, 0, 256, 64, msg.sender, cd[36], 34, 0, sub_f3234f40, 0, uint16(cd[4]) << 192 >> 16, 0
                    mem[290 len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if msg.value < ext_call.return_data[0]:
                        revert with 0, 'Not enough value to cover messageFee. Send more value for traverse fees'
                    mem[ceil32(return_data.size) + 290] = 0xc580310000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 294] = uint16(cd[4])
                    mem[ceil32(return_data.size) + 326] = 192
                    if bool(stor9[cd[4] << 240].field_0):
                        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(return_data.size) + 486] = uint255(stor9[cd[4] << 240].field_0) * 0.5
                        if not bool(stor9[cd[4] << 240].field_0):
                            require ext_code.size(stor7)
                            call stor7.0xc5803100 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args cd[4] << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor9[cd[4] << 240].field_0), Mask(248, 8, stor9[cd[4] << 240].field_0), 64, msg.sender, cd[36], 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
                        else:
                            if bool(stor9[cd[4] << 240].field_0) == 1:
                                idx = 0
                                s = 0
                                while idx < uint255(stor9[cd[4] << 240].field_0) * 0.5:
                                    mem[idx + ceil32(return_data.size) + 518] = stor9[cd[4] << 240][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(return_data.size) + ceil32(uint255(stor9[cd[4] << 240].field_0) * 0.5) + 518] = 64
                                require ext_code.size(stor7)
                                call stor7.0xc5803100 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[4] << 240, 192, ceil32(uint255(stor9[cd[4] << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor9[cd[4] << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor9[cd[4] << 240].field_0), mem[ceil32(return_data.size) + 518 len ceil32(uint255(stor9[cd[4] << 240].field_0) * 0.5) + 32], msg.sender, cd[36], 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
                            else:
                                mem[ceil32(return_data.size) + 358] = -ceil32(return_data.size) - 294
                                mem[32 len 64] = msg.sender, cd[36]
                                mem[ceil32(return_data.size) + 390] = msg.sender
                                mem[ceil32(return_data.size) + 422] = 0
                                mem[ceil32(return_data.size) + 454] = -ceil32(return_data.size) - 198
                                mem[96] = 34
                                mem[128 len 64] = 0, sub_f3234f40, ext_call.return_data[0 len 30]
                                mem[162] = 0
                                require ext_code.size(stor7)
                                call stor7.mem[Mask(256, -256, msg.sender, cd[36]) << 256 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[(Mask(256, -256, msg.sender, cd[36]) << 256) + 4 len -(Mask(256, -256, msg.sender, cd[36]) << 256) + 188]
                    else:
                        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(return_data.size) + 486] = stor9[cd[4] << 240].field_1 % 128
                        if not bool(stor9[cd[4] << 240].field_0):
                            require ext_code.size(stor7)
                            call stor7.0xc5803100 with:
                               value msg.value wei
                                 gas gas_remaining wei
                                args cd[4] << 240, 192, 256, msg.sender, 0, 352, stor9[cd[4] << 240].field_0 % 128, Mask(248, 8, stor9[cd[4] << 240].field_0), 64, msg.sender, cd[36], 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
                        else:
                            if bool(stor9[cd[4] << 240].field_0) == 1:
                                idx = 0
                                s = 0
                                while idx < stor9[cd[4] << 240].field_1 % 128:
                                    mem[idx + ceil32(return_data.size) + 518] = stor9[cd[4] << 240][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(return_data.size) + ceil32(stor9[cd[4] << 240].field_1 % 128) + 518] = 64
                                require ext_code.size(stor7)
                                call stor7.0xc5803100 with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args cd[4] << 240, 192, ceil32(stor9[cd[4] << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[cd[4] << 240].field_1 % 128) + 320, stor9[cd[4] << 240].field_0 % 128, mem[ceil32(return_data.size) + 518 len ceil32(stor9[cd[4] << 240].field_1 % 128) + 32], msg.sender, cd[36], 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
                            else:
                                mem[ceil32(return_data.size) + 358] = -ceil32(return_data.size) - 294
                                mem[32 len 64] = msg.sender, cd[36]
                                mem[ceil32(return_data.size) + 390] = msg.sender
                                mem[ceil32(return_data.size) + 422] = 0
                                mem[ceil32(return_data.size) + 454] = -ceil32(return_data.size) - 198
                                mem[96] = 34
                                mem[128 len 64] = 0, sub_f3234f40, ext_call.return_data[0 len 30]
                                mem[162] = 0
                                require ext_code.size(stor7)
                                call stor7.mem[Mask(256, -256, msg.sender, cd[36]) << 256 len 4] with:
                                   value msg.value wei
                                     gas gas_remaining wei
                                    args mem[(Mask(256, -256, msg.sender, cd[36]) << 256) + 4 len -(Mask(256, -256, msg.sender, cd[36]) << 256) + 188]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x362790f6(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x5f12a5ac(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x362790f6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == uint16(cd[4])
                        if bool(stor9[cd[4] << 240].field_0):
                            if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if uint255(stor9[cd[4] << 240].field_0) * 0.5 <= 0:
                                revert with 0, 'This chain is currently unavailable for travel'
                        else:
                            if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor9[cd[4] << 240].field_1 % 128 <= 0:
                                revert with 0, 'This chain is currently unavailable for travel'
                        require ext_code.size(stor7)
                        staticcall stor7.0x40a7bb10 with:
                                gas gas_remaining wei
                               args cd[4] << 240, address(this.address), 160, 0, 256, 64, msg.sender, cd[36], 34, 0, sub_f3234f40, 0, uint16(cd[4]) << 192 >> 16, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        return ext_call.return_data[0], 64, 64, msg.sender, cd[36]
                    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x42842e0e(?????):
                            if unknown_0x55f804b3(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require cd[4] <= test266151307()
                                require calldata.size > cd[4] + 35
                                if ('cd', 4).length > test266151307():
                                    revert with 0, 65
                                if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                                    revert with 0, 65
                                require cd[4] + ('cd', 4).length + 36 <= calldata.size
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                if bool(stor10.length):
                                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if ('cd', 4).length:
                                        stor10[].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                                    else:
                                        stor10.length = 0
                                        idx = 0
                                        while (uint255(stor10.length) * 0.5) + 31 / 32 > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if ('cd', 4).length:
                                        stor10[].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                                    else:
                                        stor10.length = 0
                                        idx = 0
                                        while stor10.length.field_1 % 128 + 31 / 32 > idx:
                                            stor10[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            mem[128] = 0
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: operator query for nonexistent token'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != msg.sender:
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: approved query for nonexistent token'
                                if approved[cd[68]] != msg.sender:
                                    if not stor5[stor2[cd[68]]][address(msg.sender)]:
                                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != address(cd[4]):
                                revert with 0, 'ERC721: transfer of token that is not own'
                            if not address(cd[36]):
                                revert with 0, 'ERC721: transfer to the zero address'
                            approved[cd[68]] = 0
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[cd[68]], 0, cd[68]);
                            if balanceOf[address(cd[4])] < 1:
                                revert with 0, 17
                            balanceOf[address(cd[4])]--
                            if balanceOf[address(cd[36])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[36])]++
                            ownerOf[cd[68]] = address(cd[36])
                            emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                            if ext_code.size(address(cd[36])):
                                mem[164] = msg.sender
                                mem[196] = address(cd[4])
                                mem[228] = cd[68]
                                mem[260] = 128
                                mem[292] = 0
                                mem[324 len 0] = None
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, address(cd[4]), cd[68], 128, 0
                                mem[160] = ext_call.return_data[0]
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
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if unknown_0x6352211e(?????) > uint32(call.func_hash) >> 224:
                        if uint32(call.func_hash) >> 224 != unknown_0x5f12a5ac(?????):
                            if unknown_0x61f5baeb(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                uint256(stor14) = not uint8(mintEnabled) or Mask(248, 8, uint256(stor14))
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] == uint16(cd[4])
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            require ('cd', 36).length <= test266151307()
                            require cd[36] + ('cd', 36).length + 36 <= calldata.size
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if bool(stor9[cd[4] << 240].field_0):
                                if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                if not ('cd', 36).length:
                                    stor9[cd[4] << 240].field_0 = 0
                                    idx = 0
                                    while (uint255(stor9[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                                        stor9[cd[4] << 240][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor9[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
                                    s = 0
                                    idx = cd[36] + 36
                                    while cd[36] + ('cd', 36).length + 36 > idx:
                                        stor9[cd[4] << 240][s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                    while (uint255(stor9[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                                        stor9[cd[4] << 240][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                                    revert with 0, 34
                                if not ('cd', 36).length:
                                    stor9[cd[4] << 240].field_0 = 0
                                    idx = 0
                                    while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                                        stor9[cd[4] << 240][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor9[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
                                    s = 0
                                    idx = cd[36] + 36
                                    while cd[36] + ('cd', 36).length + 36 > idx:
                                        stor9[cd[4] << 240][s].field_0 = cd[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
                                    while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                                        stor9[cd[4] << 240][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if unknown_0x6352211e(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            return ownerOf[cd[4]]
                        if unknown_0x6c0360eb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if bool(stor10.length):
                                if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                    revert with 0, 34
                                if bool(stor10.length):
                                    if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                        revert with 0, 34
                                    if Mask(256, -1, stor10.length):
                                        if 31 < uint255(stor10.length) * 0.5:
                                            mem[160] = uint256(stor10.field_0)
                                            idx = 160
                                            s = 0
                                            while (uint255(stor10.length) * 0.5) + 128 > idx:
                                                mem[idx + 32] = stor10[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                                else:
                                    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                                        revert with 0, 34
                                    if stor10.length.field_1 % 128:
                                        if 31 < stor10.length.field_1 % 128:
                                            mem[160] = uint256(stor10.field_0)
                                            idx = 160
                                            s = 0
                                            while stor10.length.field_1 % 128 + 128 > idx:
                                                mem[idx + 32] = stor10[s].field_256
                                                idx = idx + 32
                                                s = s + 1
                                                continue 
                                            return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)])
                                        mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                                mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[160 len ceil32(uint255(stor10.length) * 0.5)]
                                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + 224] = 0
                                return Array(len=2 * Mask(256, -1, stor10.length), data=mem[160 len ceil32(uint255(stor10.length) * 0.5)], mem[(2 * ceil32(uint255(stor10.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor10.length) * 0.5)]), 
                            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if bool(stor10.length):
                                if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor10.length):
                                    if 31 < uint255(stor10.length) * 0.5:
                                        mem[160] = uint256(stor10.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor10.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor10[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                            else:
                                if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor10.length.field_1 % 128:
                                    if 31 < stor10.length.field_1 % 128:
                                        mem[160] = uint256(stor10.field_0)
                                        idx = 160
                                        s = 0
                                        while stor10.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor10[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1 % 128)])
                                    mem[160] = 256 * Mask(248, 0, stor10.length.field_8)
                            mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(stor10.length.field_1 % 128)] = mem[160 len ceil32(stor10.length.field_1 % 128)]
                            if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
                                mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + 224] = 0
                            return Array(len=stor10.length % 128, data=mem[160 len ceil32(stor10.length.field_1 % 128)], mem[(2 * ceil32(stor10.length.field_1 % 128)) + 224 len 2 * ceil32(stor10.length.field_1 % 128)]), 
                        if unknown_0x6ecd2306(?????) == uint32(call.func_hash) >> 224:
                            require calldata.size - 4 >= 32
                            require cd[4] == uint8(cd[4])
                            if not uint8(mintEnabled):
                                revert with 0, 'Mint is disabled'
                            if uint8(cd[4]) >= 3:
                                revert with 0, 'You can only mint 2 per tx greedy bastard'
                            if not msg.sender:
                                revert with 0, 'ERC721: balance query for the zero address'
                            if balanceOf[address(msg.sender)] > !uint8(cd[4]):
                                revert with 0, 17
                            if balanceOf[address(msg.sender)] + uint8(cd[4]) > 4:
                                revert with 0, 'You can only mint 4 per account greedy bastard'
                            if nextTokenId > !uint8(cd[4]):
                                revert with 0, 17
                            if nextTokenId + uint8(cd[4]) > sub_25bb3a95:
                                revert with 0, 'You are late as fuck'
                            if nextTokenId == -1:
                                revert with 0, 17
                            nextTokenId++
                            mem[128] = 0
                            if not msg.sender:
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[stor11 + 1]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(msg.sender)] > -2:
                                revert with 0, 17
                            balanceOf[address(msg.sender)]++
                            ownerOf[stor11 + 1] = msg.sender
                            emit Transfer(0, msg.sender, nextTokenId + 1);
                            if not ext_code.size(msg.sender):
                                if 2 == uint8(cd[4]):
                                    if nextTokenId == -1:
                                        revert with 0, 17
                                    nextTokenId++
                                    mem[160] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[stor11 + 1]:
                                        revert with 0, 'ERC721: token already minted'
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    ownerOf[stor11 + 1] = msg.sender
                                    emit Transfer(0, msg.sender, nextTokenId + 1);
                                    if ext_code.size(msg.sender):
                                        mem[196] = msg.sender
                                        mem[228] = 0
                                        mem[260] = nextTokenId + 1
                                        mem[292] = 128
                                        mem[324] = 0
                                        mem[356 len 0] = None
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, nextTokenId + 1, 128, 0
                                        mem[192] = ext_call.return_data[0]
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
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                            else:
                                mem[164] = msg.sender
                                mem[196] = 0
                                mem[228] = nextTokenId + 1
                                mem[260] = 128
                                mem[292] = 0
                                mem[324 len 0] = None
                                require ext_code.size(msg.sender)
                                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, nextTokenId + 1, 128, 0
                                mem[160] = ext_call.return_data[0]
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
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                                if 2 == uint8(cd[4]):
                                    if nextTokenId == -1:
                                        revert with 0, 17
                                    nextTokenId++
                                    mem[ceil32(return_data.size) + 160] = 0
                                    if not msg.sender:
                                        revert with 0, 'ERC721: mint to the zero address'
                                    if ownerOf[stor11 + 1]:
                                        revert with 0, 'ERC721: token already minted'
                                    if balanceOf[address(msg.sender)] > -2:
                                        revert with 0, 17
                                    balanceOf[address(msg.sender)]++
                                    ownerOf[stor11 + 1] = msg.sender
                                    emit Transfer(0, msg.sender, nextTokenId + 1);
                                    if ext_code.size(msg.sender):
                                        mem[ceil32(return_data.size) + 196] = msg.sender
                                        mem[ceil32(return_data.size) + 228] = 0
                                        mem[ceil32(return_data.size) + 260] = nextTokenId + 1
                                        mem[ceil32(return_data.size) + 292] = 128
                                        mem[ceil32(return_data.size) + 324] = 0
                                        mem[ceil32(return_data.size) + 356 len 0] = None
                                        require ext_code.size(msg.sender)
                                        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, nextTokenId + 1, 128, 0
                                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
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
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            else:
                if approve(address arg1, uint256 arg2) <= uint32(call.func_hash) >> 224:
                    if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if not ownerOf[cd[36]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        if address(cd[4]) == ownerOf[cd[36]]:
                            revert with 0, 'ERC721: approval to current owner'
                        if ownerOf[cd[36]] != msg.sender:
                            if not stor5[stor2[cd[36]]][address(msg.sender)]:
                                revert with 0, 'ERC721: approve caller is not owner nor approved for all'
                        approved[cd[36]] = address(cd[4])
                        if not ownerOf[cd[36]]:
                            revert with 0, 'ERC721: owner query for nonexistent token'
                        emit Approval(ownerOf[cd[36]], address(cd[4]), cd[36]);
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x1c37a822(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                                if uint32(call.func_hash) >> 224 != unknown_0x25bb3a95(?????):
                                require not msg.value
                                return sub_25bb3a95
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require cd[4] == address(cd[4])
                            require cd[36] == address(cd[36])
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: operator query for nonexistent token'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != msg.sender:
                                if not ownerOf[cd[68]]:
                                    revert with 0, 'ERC721: approved query for nonexistent token'
                                if approved[cd[68]] != msg.sender:
                                    if not stor5[stor2[cd[68]]][address(msg.sender)]:
                                        revert with 0, 'ERC721: transfer caller is not owner nor approved'
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            if ownerOf[cd[68]] != address(cd[4]):
                                revert with 0, 'ERC721: transfer of token that is not own'
                            if not address(cd[36]):
                                revert with 0, 'ERC721: transfer to the zero address'
                            approved[cd[68]] = 0
                            if not ownerOf[cd[68]]:
                                revert with 0, 'ERC721: owner query for nonexistent token'
                            emit Approval(ownerOf[cd[68]], 0, cd[68]);
                            if balanceOf[address(cd[4])] < 1:
                                revert with 0, 17
                            balanceOf[address(cd[4])]--
                            if balanceOf[address(cd[36])] > -2:
                                revert with 0, 17
                            balanceOf[address(cd[36])]++
                            ownerOf[cd[68]] = address(cd[36])
                            emit Transfer(address(cd[4]), address(cd[36]), cd[68]);
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 128
                            require cd[4] == uint16(cd[4])
                            require cd[36] <= test266151307()
                            require cd[36] + 35 < calldata.size
                            if ('cd', 36).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                                revert with 0, 65
                            mem[128] = ('cd', 36).length
                            require cd[36] + ('cd', 36).length + 36 <= calldata.size
                            mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                            mem[('cd', 36).length + 160] = 0
                            require cd[68] == uint64(cd[68])
                            require cd[100] <= test266151307()
                            require cd[100] + 35 < calldata.size
                            if ('cd', 100).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 100).length)) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 > test266151307():
                                revert with 0, 65
                            mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 100).length
                            require cd[100] + ('cd', 100).length + 36 <= calldata.size
                            mem[ceil32(ceil32(('cd', 36).length)) + 161 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                            mem[ceil32(ceil32(('cd', 36).length)) + ('cd', 100).length + 161] = 0
                            if msg.sender != this.address:
                                revert with 0, 'NBR: caller must be Bridge.'
                            require ('cd', 100).length >= 64
                            _743 = mem[ceil32(ceil32(('cd', 36).length)) + 161]
                            require mem[ceil32(ceil32(('cd', 36).length)) + 161] == mem[ceil32(ceil32(('cd', 36).length)) + 173 len 20]
                            _860 = mem[ceil32(ceil32(('cd', 36).length)) + 193]
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = 0
                            if not address(_743):
                                revert with 0, 'ERC721: mint to the zero address'
                            if ownerOf[_860]:
                                revert with 0, 'ERC721: token already minted'
                            if balanceOf[address(_743)] > -2:
                                revert with 0, 17
                            balanceOf[address(_743)]++
                            ownerOf[_860] = address(_743)
                            emit Transfer(0, address(_743), _860);
                            if ext_code.size(address(_743)):
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = msg.sender
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 198] = 0
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230] = _860
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 262] = 128
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len 0] = None
                                require ext_code.size(address(_743))
                                call address(_743).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, _860, 128, 0
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = ext_call.return_data[0]
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
                                require return_data.size >= 32
                                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                                if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                else:
                    if uint32(call.func_hash) >> 224 != lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4):
                        if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == Mask(32, 224, cd[4])
                            if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                                return True
                            return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                        if uint32(call.func_hash) >> 224 != name():
                            if uint32(call.func_hash) >> 224 != getApproved(uint256 arg1):
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not ownerOf[cd[4]]:
                                revert with 0, 'ERC721: approved query for nonexistent token'
                            return approved[cd[4]]
                        require not msg.value
                        if bool(stor0.length):
                            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                                revert with 0, 34
                            if bool(stor0.length):
                                if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                                    revert with 0, 34
                                if Mask(256, -1, stor0.length):
                                    if 31 < uint255(stor0.length) * 0.5:
                                        mem[160] = uint256(stor0.field_0)
                                        idx = 160
                                        s = 0
                                        while (uint255(stor0.length) * 0.5) + 128 > idx:
                                            mem[idx + 32] = stor0[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor0.length.field_8)
                            else:
                                if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                                    revert with 0, 34
                                if stor0.length.field_1 % 128:
                                    if 31 < stor0.length.field_1 % 128:
                                        mem[160] = uint256(stor0.field_0)
                                        idx = 160
                                        s = 0
                                        while stor0.length.field_1 % 128 + 128 > idx:
                                            mem[idx + 32] = stor0[s].field_256
                                            idx = idx + 32
                                            s = s + 1
                                            continue 
                                        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                                    mem[160] = 256 * Mask(248, 0, stor0.length.field_8)
                            mem[ceil32(uint255(stor0.length) * 0.5) + 224 len ceil32(uint255(stor0.length) * 0.5)] = mem[160 len ceil32(uint255(stor0.length) * 0.5)]
                            if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
                                mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 224] = 0
                            return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
                        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                            revert with 0, 34
                        if bool(stor0.length):
                            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor0.length):
                                if 31 < uint255(stor0.length) * 0.5:
                                    mem[160] = uint256(stor0.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor0.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor0[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor0.length.field_8)
                        else:
                            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                                revert with 0, 34
                            if stor0.length.field_1 % 128:
                                if 31 < stor0.length.field_1 % 128:
                                    mem[160] = uint256(stor0.field_0)
                                    idx = 160
                                    s = 0
                                    while stor0.length.field_1 % 128 + 128 > idx:
                                        mem[idx + 32] = stor0[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1 % 128)])
                                mem[160] = 256 * Mask(248, 0, stor0.length.field_8)
                        mem[ceil32(stor0.length.field_1 % 128) + 224 len ceil32(stor0.length.field_1 % 128)] = mem[160 len ceil32(stor0.length.field_1 % 128)]
                        if ceil32(stor0.length.field_1 % 128) > stor0.length.field_1 % 128:
                            mem[stor0.length.field_1 % 128 + ceil32(stor0.length.field_1 % 128) + 224] = 0
                        return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 224 len 2 * ceil32(stor0.length.field_1 % 128)]), 
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == uint16(cd[4])
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 36).length)) + 129 < 128 or ceil32(ceil32(('cd', 36).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 36).length
                    require cd[36] + ('cd', 36).length + 36 <= calldata.size
                    mem[160 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[('cd', 36).length + 160] = 0
                    require cd[68] == uint64(cd[68])
                    require cd[100] <= test266151307()
                    require cd[100] + 35 < calldata.size
                    if ('cd', 100).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 100).length)) + 130 < 129 or ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 > test266151307():
                        revert with 0, 65
                    mem[ceil32(ceil32(('cd', 36).length)) + 129] = ('cd', 100).length
                    require cd[100] + ('cd', 100).length + 36 <= calldata.size
                    mem[ceil32(ceil32(('cd', 36).length)) + 161 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
                    mem[ceil32(ceil32(('cd', 36).length)) + ('cd', 100).length + 161] = 0
                    if stor7 != msg.sender:
                        revert with 0, 'lzReceived must be called by endpoint'
                    if bool(stor9[cd[4] << 240].field_0):
                        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if ('cd', 36).length != uint255(stor9[cd[4] << 240].field_0) * 0.5:
                            revert with 0, 'NBR: invalid source sending contract'
                    else:
                        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                            revert with 0, 34
                        if ('cd', 36).length != stor9[cd[4] << 240].field_1 % 128:
                            revert with 0, 'NBR: invalid source sending contract'
                    if bool(stor9[cd[4] << 240].field_0):
                        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_0) * 0.5 < 32:
                            revert with 0, 34
                        if not bool(stor9[cd[4] << 240].field_0):
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = Mask(248, 8, stor9[cd[4] << 240].field_0)
                            if sha3(call.data[cd[36] + 36 len ('cd', 36).length]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len uint255(stor9[cd[4] << 240].field_0) * 0.5]):
                                revert with 0, 'NBR: invalid source sending contract'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                if ceil32(('cd', 100).length) <= ('cd', 100).length:
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        if ceil32(('cd', 36).length) > ('cd', 36).length:
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ceil32(('cd', 100).length) + 326 len 60]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                else:
                                    mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        if ceil32(('cd', 36).length) > ('cd', 36).length:
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ('cd', 100).length + 358 len -('cd', 100).length + ceil32(('cd', 100).length) + 28]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                            else:
                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                if ceil32(('cd', 100).length) > ('cd', 100).length:
                                    mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                require ext_code.size(this.address)
                                call this.address.0x1c37a822 with:
                                     gas gas_remaining wei
                                    args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 100).length) - ('cd', 36).length + ceil32(('cd', 36).length)]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                if not ext_call.success:
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                    stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                    stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                    if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                        emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 36).length) + -('cd', 36).length + 28], ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256) << (8 * ceil32(('cd', 100).length)) - 256
                                    else:
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 386 len ceil32(('cd', 100).length) + ceil32(('cd', 36).length) - ('cd', 36).length]
                        else:
                            if bool(stor9[cd[4] << 240].field_0) != 1:
                                if sha3(call.data[cd[36] + 36 len ('cd', 36).length]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len -ceil32(ceil32(('cd', 36).length)) + -ceil32(ceil32(('cd', 100).length)) - 130]):
                                    revert with 0, 'NBR: invalid source sending contract'
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                    if ceil32(('cd', 100).length) <= ('cd', 100).length:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            if ceil32(('cd', 36).length) > ('cd', 36).length:
                                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ceil32(('cd', 100).length) + 326 len 60]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                    else:
                                        mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            if ceil32(('cd', 36).length) > ('cd', 36).length:
                                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ('cd', 100).length + 358 len -('cd', 100).length + ceil32(('cd', 100).length) + 28]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                else:
                                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                    if ceil32(('cd', 100).length) > ('cd', 100).length:
                                        mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 100).length) - ('cd', 36).length + ceil32(('cd', 36).length)]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 36).length) + -('cd', 36).length + 28], ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256) << (8 * ceil32(('cd', 100).length)) - 256
                                        else:
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 386 len ceil32(('cd', 100).length) + ceil32(('cd', 36).length) - ('cd', 36).length]
                            else:
                                idx = 0
                                s = 0
                                while idx < uint255(stor9[cd[4] << 240].field_0) * 0.5:
                                    mem[idx + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = stor9[cd[4] << 240][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if sha3(mem[160 len mem[128]]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len uint255(stor9[cd[4] << 240].field_0) * 0.5]):
                                    revert with 0, 'NBR: invalid source sending contract'
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = 0x1c37a82200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 134] = uint16(cd[4])
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 262] = mem[128]
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(mem[128]) > mem[128]:
                                    mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 198] = uint64(cd[68])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230] = ceil32(mem[128]) + 160
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                    if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                    else:
                                        mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230 len mem[128] + 64], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                        stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        if ceil32(mem[128]) <= mem[128]:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) > mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len ceil32(mem[128]) + -mem[128] + 28], mem[ceil32(ceil32(('cd', 36).length)) + 129], mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                        else:
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) > mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                else:
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 198] = uint64(cd[68])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230] = ceil32(mem[128]) + 160
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                    if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                            stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) <= mem[128]:
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                                if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                                else:
                                                    mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[ceil32(ceil32(('cd', 36).length)) + 129], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(mem[128]) + 64]
                                            else:
                                                mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                                if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                                else:
                                                    mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                    emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 64], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                    else:
                                        mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[ceil32(ceil32(('cd', 36).length)) + 129], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230 len ceil32(mem[128]) + 64]
                                        if not ext_call.success:
                                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            mem[0] = uint64(cd[68])
                                            mem[32] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])
                                            stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                            stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, ceil32(mem[128]) + 160, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322 len mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 358 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + -mem[ceil32(ceil32(('cd', 36).length)) + 129] + 28]
                                            else:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 36], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 358 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + -mem[ceil32(ceil32(('cd', 36).length)) + 129] + 28]
                    else:
                        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor9[cd[4] << 240].field_0):
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = Mask(248, 8, stor9[cd[4] << 240].field_0)
                            if sha3(call.data[cd[36] + 36 len ('cd', 36).length]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len stor9[cd[4] << 240].field_1 % 128]):
                                revert with 0, 'NBR: invalid source sending contract'
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                            if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                if ceil32(('cd', 100).length) <= ('cd', 100).length:
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        if ceil32(('cd', 36).length) > ('cd', 36).length:
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ceil32(('cd', 100).length) + 326 len 60]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                else:
                                    mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        if ceil32(('cd', 36).length) > ('cd', 36).length:
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ('cd', 100).length + 358 len -('cd', 100).length + ceil32(('cd', 100).length) + 28]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                            else:
                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                if ceil32(('cd', 100).length) > ('cd', 100).length:
                                    mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                require ext_code.size(this.address)
                                call this.address.0x1c37a822 with:
                                     gas gas_remaining wei
                                    args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 100).length) - ('cd', 36).length + ceil32(('cd', 36).length)]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                if not ext_call.success:
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                    stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                    stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                    if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                        emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 36).length) + -('cd', 36).length + 28], ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256) << (8 * ceil32(('cd', 100).length)) - 256
                                    else:
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                        mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                        if ceil32(('cd', 100).length) > ('cd', 100).length:
                                            mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                        emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 386 len ceil32(('cd', 100).length) + ceil32(('cd', 36).length) - ('cd', 36).length]
                        else:
                            if bool(stor9[cd[4] << 240].field_0) != 1:
                                if sha3(call.data[cd[36] + 36 len ('cd', 36).length]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len -ceil32(ceil32(('cd', 36).length)) + -ceil32(ceil32(('cd', 100).length)) - 130]):
                                    revert with 0, 'NBR: invalid source sending contract'
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                    if ceil32(('cd', 100).length) <= ('cd', 100).length:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            if ceil32(('cd', 36).length) > ('cd', 36).length:
                                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ceil32(('cd', 100).length) + 326 len 60]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                    else:
                                        mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                            stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                            if ceil32(('cd', 36).length) > ('cd', 36).length:
                                                mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, Array(len=('cd', 100).length, data=Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], 0) << (8 * ceil32(('cd', 100).length)) - 256, Mask(8 * -ceil32(('cd', 100).length) + ('cd', 100).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(('cd', 36).length) + ('cd', 100).length + 358 len -('cd', 100).length + ceil32(('cd', 100).length) + 28]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(('cd', 36).length) + 4]
                                else:
                                    mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = ('cd', 100).length
                                    mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], 0
                                    if ceil32(('cd', 100).length) > ('cd', 100).length:
                                        mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                    require ext_code.size(this.address)
                                    call this.address.0x1c37a822 with:
                                         gas gas_remaining wei
                                        args cd[4] << 240, Array(len=('cd', 36).length, data=Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256) << (8 * ceil32(('cd', 36).length)) - 256, Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 100).length) - ('cd', 36).length + ceil32(('cd', 36).length)]), cd[68] << 192, ceil32(('cd', 36).length) + 160
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[('cd', 36).length + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_0 = ('cd', 100).length
                                        stor[Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, ('map', ('mask_shl', 16, 0, 240, ('cd', 4)), ('name', 'sub_8ee74912', 8)))][Mask(8 * ceil32(('cd', 36).length), -(8 * ceil32(('cd', 36).length)) + 256, call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(('cd', 36).length)) + (8 * ceil32(ceil32(('cd', 36).length))) + 256) << (8 * ceil32(('cd', 36).length)) - 256][cd[68] << 192].field_256 = sha3(call.data[cd[100] + 36 len ('cd', 100).length])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = ('cd', 36).length
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(('cd', 36).length)] = call.data[cd[36] + 36 len ('cd', 36).length], Mask(8 * ceil32(('cd', 36).length) - ('cd', 36).length, -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 36).length) + -ceil32(ceil32(('cd', 36).length)) + 31) + 256
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(('cd', 36).length) + 160
                                        if ceil32(('cd', 36).length) <= ('cd', 36).length:
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len ceil32(('cd', 36).length) + -('cd', 36).length + 28], ('cd', 100).length, Mask(8 * ceil32(('cd', 100).length), -(8 * ceil32(('cd', 100).length)) + 256, call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256) << (8 * ceil32(('cd', 100).length)) - 256
                                        else:
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = ('cd', 100).length
                                            mem[ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(('cd', 100).length)] = call.data[cd[100] + 36 len ('cd', 100).length], Mask(8 * ceil32(('cd', 100).length) - ('cd', 100).length, -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(('cd', 100).length) + -ceil32(ceil32(('cd', 100).length)) + 31) + 256
                                            if ceil32(('cd', 100).length) > ('cd', 100).length:
                                                mem[('cd', 100).length + ceil32(('cd', 36).length) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ('cd', 36).length + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ('cd', 36).length + 386 len ceil32(('cd', 100).length) + ceil32(('cd', 36).length) - ('cd', 36).length]
                            else:
                                idx = 0
                                s = 0
                                while idx < stor9[cd[4] << 240].field_1 % 128:
                                    mem[idx + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = stor9[cd[4] << 240][s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if sha3(mem[160 len mem[128]]) != sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130 len stor9[cd[4] << 240].field_1 % 128]):
                                    revert with 0, 'NBR: invalid source sending contract'
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = 0x1c37a82200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 134] = uint16(cd[4])
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 166] = 128
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 262] = mem[128]
                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                if ceil32(mem[128]) > mem[128]:
                                    mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = 0
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 198] = uint64(cd[68])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230] = ceil32(mem[128]) + 160
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                    if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                    else:
                                        mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230 len mem[128] + 64], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                    if not ext_call.success:
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                        stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                        stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                        mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                        if ceil32(mem[128]) <= mem[128]:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) > mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len ceil32(mem[128]) + -mem[128] + 28], mem[ceil32(ceil32(('cd', 36).length)) + 129], mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                        else:
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) > mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                            emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 326 len 28], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                else:
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 198] = uint64(cd[68])
                                    mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230] = ceil32(mem[128]) + 160
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                    mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                    if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 294 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                        if not ext_call.success:
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                            stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) <= mem[128]:
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                                if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                                else:
                                                    mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[ceil32(ceil32(('cd', 36).length)) + 129], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len ceil32(mem[128]) + 64]
                                            else:
                                                mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                                mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                                mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                                if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                    emit 0xe6f25403: cd[4] << 240, Array(len=mem[128], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) + 32]), cd[68] << 192, ceil32(mem[128]) + 160
                                                else:
                                                    mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                    emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[128] + 64], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[128] + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + ceil32(mem[128]) - mem[128]]
                                    else:
                                        mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 326] = 0
                                        require ext_code.size(this.address)
                                        call this.address.0x1c37a822 with:
                                             gas gas_remaining wei
                                            args cd[4] << 240, Array(len=mem[ceil32(ceil32(('cd', 36).length)) + 129], data=mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + ceil32(mem[128]) + 326 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]), cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 230 len ceil32(mem[128]) + 64]
                                        if not ext_call.success:
                                            mem[64] = ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + 161 len mem[ceil32(ceil32(('cd', 36).length)) + 129]])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = sha3(cd[4] << 240, 8)
                                            mem[0] = uint64(cd[68])
                                            mem[32] = sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])
                                            stor[sha3(mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194 len mem[128] + 32])][cd[68] << 192] = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 130]
                                            stor1[('map', ('mask_shl', 64, 0, 192, ('cd', 68)), ('sha3', ('mem', ('range', ('add', 194, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 36))))))), ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('cd', 100)))))))), ('add', 32, ('mem', ('range', 128, 32)))))))].field_0 = mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 162]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 194] = uint16(cd[4])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 226] = 128
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322] = mem[128]
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                            if ceil32(mem[128]) > mem[128]:
                                                mem[mem[128] + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = 0
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 258] = uint64(cd[68])
                                            mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290] = ceil32(mem[128]) + 160
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 354] = mem[ceil32(ceil32(('cd', 36).length)) + 129]
                                            mem[ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])] = mem[ceil32(ceil32(('cd', 36).length)) + 161 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129])]
                                            if ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) <= mem[ceil32(ceil32(('cd', 36).length)) + 129]:
                                                emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, ceil32(mem[128]) + 160, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 322 len mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 4], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 358 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + -mem[ceil32(ceil32(('cd', 36).length)) + 129] + 28]
                                            else:
                                                mem[mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 386] = 0
                                                emit 0xe6f25403: cd[4] << 240, 128, cd[68] << 192, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + 290 len mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 36], 0, mem[ceil32(ceil32(('cd', 36).length)) + ceil32(ceil32(('cd', 100).length)) + mem[ceil32(ceil32(('cd', 36).length)) + 129] + ceil32(mem[128]) + 358 len ceil32(mem[ceil32(ceil32(('cd', 36).length)) + 129]) + -mem[ceil32(ceil32(('cd', 36).length)) + 129] + 28]
}



}
