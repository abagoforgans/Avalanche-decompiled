contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
address owner;
array of uint8 stor1;
uint256 stor2;
array of struct stor3;
array of struct stor4;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor8;
address stor9;
mapping of struct sub_8ee74912;
mapping of struct stor11;
address stor12;
address stor13;
address _owner;
array of struct stor15;
uint256 nextTokenId;
uint256 stor17;
array of struct count;
uint256 stor19;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return count[address(arg1)].field_0
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

function sub_9f20bc92(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < count[arg1].field_0
    return count[arg1][arg2].field_0
}

function _owner() {
    return _owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor8[address(arg1)][address(arg2)])
}

function donate() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_5f9ce051(?) {
    require calldata.size - 4 >= 32
    if not uint8(stor1[msg.sender]):
        revert with 0, 'not setter'
    stor2 = arg1
}

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_8cf85bd7(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor1[address(arg1)]) = 1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'GG: Failed to withdraw Ether'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor8[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function getIds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if count[address(arg1)].field_0:
        mem[128] = count[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * count[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = count[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=count[address(arg1)].field_0, data=mem[128 len 32 * count[address(arg1)].field_0])
    mem[(32 * count[address(arg1)].field_0) + 128] = 32
    mem[(32 * count[address(arg1)].field_0) + 160] = count[address(arg1)].field_0
    mem[(32 * count[address(arg1)].field_0) + 192 len 32 * count[address(arg1)].field_0] = mem[128 len 32 * count[address(arg1)].field_0]
    return memory
      from (32 * count[address(arg1)].field_0) + 128
       len (96 * count[address(arg1)].field_0) + 64
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor8[stor5[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_ade03d8a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    idx = 0
    while idx < count[address(arg1)].field_0:
        if idx >= count[address(arg1)].field_0:
            revert with 0, 50
        if arg2 != count[address(arg1)][idx].field_0:
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 18
            idx = idx + 1
            continue 
        if count[address(arg1)].field_0 < 1:
            revert with 0, 17
        if count[address(arg1)].field_0 - 1 >= count[address(arg1)].field_0:
            revert with 0, 50
        if idx >= count[address(arg1)].field_0:
            revert with 0, 50
        count[address(arg1)][idx].field_0 = count[address(arg1)][count[address(arg1)].field_0].field_0
        if not count[address(arg1)].field_0:
            revert with 0, 49
        count[address(arg1)][count[address(arg1)].field_0].field_0 = 0
        count[address(arg1)].field_0--
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
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while (uint255(stor15.length) * 0.5) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while stor15.length.field_1 % 128 + 31 / 32 > idx:
                stor15[idx].field_0 = 0
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
            if not stor8[stor5[arg3]][address(msg.sender)]:
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

function mint() payable {
    if msg.value < 11 * 10^17:
        revert with 0, 'not enough fee'
    if 1 > !nextTokenId:
        revert with 0, 17
    if nextTokenId + 1 > stor17:
        revert with 0, 'GG: Mint exceeds supply'
    if nextTokenId == -1:
        revert with 0, 17
    nextTokenId++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor16 + 1] = msg.sender
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
    count[msg.sender].field_0++
    count[msg.sender][count[msg.sender].field_0].field_0 = nextTokenId
    if msg.value and stor2 > -1 / msg.value:
        revert with 0, 17
    if 100 < stor2:
        revert with 0, 17
    if msg.value and -stor2 + 100 > -1 / msg.value:
        revert with 0, 17
    call stor12 with:
       value (100 * msg.value) - (stor2 * msg.value) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor13 with:
       value msg.value * stor2 / 100 wei
         gas 2300 * is_zero(value) wei
    return nextTokenId
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
            if not stor8[stor5[arg3]][address(msg.sender)]:
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

function sub_eb8d72b7(?) {
    require calldata.size - 4 >= 64
    require cd[4] == uint16(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11[cd[4] << 240].field_0):
        if bool(stor11[cd[4] << 240].field_0) == uint255(stor11[cd[4] << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor11[cd[4] << 240].field_0 = 0
            idx = 0
            while (uint255(stor11[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor11[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor11[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor11[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor11[cd[4] << 240].field_0) * 0.5) + 31 / 32 > idx:
                stor11[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11[cd[4] << 240].field_0) == stor11[cd[4] << 240].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            stor11[cd[4] << 240].field_0 = 0
            idx = 0
            while stor11[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor11[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor11[cd[4] << 240].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor11[cd[4] << 240][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor11[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                stor11[cd[4] << 240][idx].field_0 = 0
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
            if not stor8[stor5[arg3]][address(msg.sender)]:
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
        revert with 0, 'NonblockingReceiver: caller must be Bridge.'
    require arg4.length >= 64
    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        revert with 0, 'ERC721: mint to the zero address'
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
    count[address(mem[ceil32(ceil32(arg2.length)) + 129])].field_0++
    count[address(mem[ceil32(ceil32(arg2.length)) + 129])][count[address(mem[ceil32(ceil32(arg2.length)) + 129])].field_0].field_0 = mem[ceil32(ceil32(arg2.length)) + 161]
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        else:
            if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor3.length.field_1 % 128:
                if 31 < stor3.length.field_1 % 128:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    else:
        if bool(stor3.length) == stor3.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor3.length.field_1 % 128:
            if 31 < stor3.length.field_1 % 128:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor3.length.field_8)
    mem[ceil32(stor3.length.field_1 % 128) + 192 len ceil32(stor3.length.field_1 % 128)] = mem[128 len ceil32(stor3.length.field_1 % 128)]
    if ceil32(stor3.length.field_1 % 128) > stor3.length.field_1 % 128:
        mem[stor3.length.field_1 % 128 + ceil32(stor3.length.field_1 % 128) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1 % 128)], mem[(2 * ceil32(stor3.length.field_1 % 128)) + 192 len 2 * ceil32(stor3.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        else:
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor4.length.field_1 % 128:
                if 31 < stor4.length.field_1 % 128:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    else:
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor4.length.field_1 % 128:
            if 31 < stor4.length.field_1 % 128:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor4.length.field_8)
    mem[ceil32(stor4.length.field_1 % 128) + 192 len ceil32(stor4.length.field_1 % 128)] = mem[128 len ceil32(stor4.length.field_1 % 128)]
    if ceil32(stor4.length.field_1 % 128) > stor4.length.field_1 % 128:
        mem[stor4.length.field_1 % 128 + ceil32(stor4.length.field_1 % 128) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1 % 128)], mem[(2 * ceil32(stor4.length.field_1 % 128)) + 192 len 2 * ceil32(stor4.length.field_1 % 128)]), 
}

function sub_7533d788(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor11[arg1].field_0):
            if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_0):
                if 31 < uint255(stor11[arg1].field_0) * 0.5:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        else:
            if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor11[arg1].field_1 % 128:
                if 31 < stor11[arg1].field_1 % 128:
                    mem[128] = stor11[arg1].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
        mem[ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor11[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor11[arg1].field_0) * 0.5) > uint255(stor11[arg1].field_0) * 0.5:
            mem[(uint255(stor11[arg1].field_0) * 0.5) + ceil32(uint255(stor11[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11[arg1].field_0), data=mem[128 len ceil32(uint255(stor11[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor11[arg1].field_0) * 0.5)]), 
    if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor11[arg1].field_0):
        if bool(stor11[arg1].field_0) == uint255(stor11[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_0):
            if 31 < uint255(stor11[arg1].field_0) * 0.5:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    else:
        if bool(stor11[arg1].field_0) == stor11[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor11[arg1].field_1 % 128:
            if 31 < stor11[arg1].field_1 % 128:
                mem[128] = stor11[arg1].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11[arg1].field_8)
    mem[ceil32(stor11[arg1].field_1 % 128) + 192 len ceil32(stor11[arg1].field_1 % 128)] = mem[128 len ceil32(stor11[arg1].field_1 % 128)]
    if ceil32(stor11[arg1].field_1 % 128) > stor11[arg1].field_1 % 128:
        mem[stor11[arg1].field_1 % 128 + ceil32(stor11[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor11[arg1].field_0 % 128, data=mem[128 len ceil32(stor11[arg1].field_1 % 128)], mem[(2 * ceil32(stor11[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor11[arg1].field_1 % 128)]), 
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
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 97] = sha3(arg1 << 240, 10)
    if ceil32(arg2.length) <= arg2.length:
        _42 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))]):
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))]):
            revert with 0, 'LayerZero: invalid payload'
        stor[_42][arg3 << 192] = 0
        uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))]) = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))]):
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))]):
            revert with 0, 'LayerZero: invalid payload'
        stor[_45][arg3 << 192] = 0
        uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))]) = 0
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
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must own the token to traverse'
    if bool(stor11[arg1 << 240].field_0):
        if bool(stor11[arg1 << 240].field_0) == uint255(stor11[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor11[arg1 << 240].field_0) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    else:
        if bool(stor11[arg1 << 240].field_0) == stor11[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor11[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor5[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor5[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[0] = msg.sender
    mem[32] = 18
    idx = 0
    while idx < count[address(msg.sender)].field_0:
        if idx >= count[address(msg.sender)].field_0:
            revert with 0, 50
        if arg2 != count[address(msg.sender)][idx].field_0:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 18
            idx = idx + 1
            continue 
        if count[address(msg.sender)].field_0 < 1:
            revert with 0, 17
        if count[address(msg.sender)].field_0 - 1 >= count[address(msg.sender)].field_0:
            revert with 0, 50
        if idx >= count[address(msg.sender)].field_0:
            revert with 0, 50
        count[address(msg.sender)][idx].field_0 = count[address(msg.sender)][count[address(msg.sender)].field_0].field_0
        if not count[address(msg.sender)].field_0:
            revert with 0, 49
        count[address(msg.sender)][count[address(msg.sender)].field_0].field_0 = 0
        count[address(msg.sender)].field_0--
        mem[128] = msg.sender
        mem[160] = arg2
        mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
        mem[226] = stor19
        mem[192] = 34
        mem[258] = 0x40a7bb1000000000000000000000000000000000000000000000000000000000
        mem[262] = uint16(arg1)
        mem[294] = this.address
        mem[326] = 160
        mem[422] = 64
        idx = 0
        while idx < 64:
            mem[idx + 454] = mem[idx + 128]
            mem[0] = msg.sender
            mem[32] = 18
            idx = idx + 32
            continue 
        mem[358] = 0
        mem[390] = 256
        mem[518] = 34
        idx = 0
        while idx < 34:
            mem[idx + 550] = mem[idx + 224]
            mem[0] = msg.sender
            mem[32] = 18
            idx = idx + 32
            continue 
        mem[584] = 0
        require ext_code.size(stor9)
        staticcall stor9.0x40a7bb10 with:
                gas gas_remaining wei
               args arg1 << 240, address(this.address), 160, 0, 256, 64, mem[454 len 64], 34, mem[550 len 34], 0
        mem[258 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 258
        require return_data.size >= 64
        if msg.value < ext_call.return_data[0]:
            revert with 0, 'GG: msg.value not enough to cover messageFee. Send gas for message fees'
        mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 262] = uint16(arg1)
        mem[ceil32(return_data.size) + 294] = 192
        if bool(stor11[arg1 << 240].field_0):
            if bool(stor11[arg1 << 240].field_0) == uint255(stor11[arg1 << 240].field_0) * 0.5 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 454] = uint255(stor11[arg1 << 240].field_0) * 0.5
            if not bool(stor11[arg1 << 240].field_0):
                idx = 0
                while idx < 64:
                    mem[idx + ceil32(return_data.size) + 550] = mem[idx + 128]
                    mem[0] = msg.sender
                    mem[32] = 18
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(return_data.size) + 646] = mem[idx + 224]
                    mem[0] = msg.sender
                    mem[32] = 18
                    idx = idx + 32
                    continue 
                require ext_code.size(stor9)
                call stor9.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor11[arg1 << 240].field_0), Mask(248, 8, stor11[arg1 << 240].field_0), 64, mem[ceil32(return_data.size) + 550 len 64], 34, mem[ceil32(return_data.size) + 646 len 34], 0
            else:
                if bool(stor11[arg1 << 240].field_0) == 1:
                    mem[0] = sha3(arg1 << 240, 11)
                    idx = 0
                    s = sha3(mem[0])
                    while idx < uint255(stor11[arg1 << 240].field_0) * 0.5:
                        mem[idx + ceil32(return_data.size) + 486] = stor[s]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 486] = 64
                    idx = 0
                    while idx < 64:
                        mem[idx + ceil32(return_data.size) + ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 518] = mem[idx + 128]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(return_data.size) + ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 614] = mem[idx + 224]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    require ext_code.size(stor9)
                    call stor9.0xc5803100 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args arg1 << 240, 192, ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor11[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 96], 34, mem[ceil32(return_data.size) + ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 614 len 34], 0
                else:
                    mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                    idx = 0
                    while idx < 64:
                        mem[idx + 32] = mem[idx + 128]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    mem[ceil32(return_data.size) + 358] = msg.sender
                    mem[ceil32(return_data.size) + 390] = 0
                    mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                    mem[96] = 34
                    idx = 0
                    while idx < 34:
                        mem[idx + 128] = mem[idx + 224]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    mem[162] = 0
                    require ext_code.size(stor9)
                    call stor9.mem[mem[64] len 4] with:
                       value msg.value wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] + 188]
        else:
            if bool(stor11[arg1 << 240].field_0) == stor11[arg1 << 240].field_1 % 128 < 32:
                revert with 0, 34
            mem[ceil32(return_data.size) + 454] = stor11[arg1 << 240].field_1 % 128
            if not bool(stor11[arg1 << 240].field_0):
                idx = 0
                while idx < 64:
                    mem[idx + ceil32(return_data.size) + 550] = mem[idx + 128]
                    mem[0] = msg.sender
                    mem[32] = 18
                    idx = idx + 32
                    continue 
                idx = 0
                while idx < 34:
                    mem[idx + ceil32(return_data.size) + 646] = mem[idx + 224]
                    mem[0] = msg.sender
                    mem[32] = 18
                    idx = idx + 32
                    continue 
                require ext_code.size(stor9)
                call stor9.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, 256, msg.sender, 0, 352, stor11[arg1 << 240].field_0 % 128, Mask(248, 8, stor11[arg1 << 240].field_0), 64, mem[ceil32(return_data.size) + 550 len 64], 34, mem[ceil32(return_data.size) + 646 len 34], 0
            else:
                if bool(stor11[arg1 << 240].field_0) == 1:
                    mem[0] = sha3(arg1 << 240, 11)
                    idx = 0
                    s = sha3(mem[0])
                    while idx < stor11[arg1 << 240].field_1 % 128:
                        mem[idx + ceil32(return_data.size) + 486] = stor[s]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(return_data.size) + ceil32(stor11[arg1 << 240].field_1 % 128) + 486] = 64
                    idx = 0
                    while idx < 64:
                        mem[idx + ceil32(return_data.size) + ceil32(stor11[arg1 << 240].field_1 % 128) + 518] = mem[idx + 128]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    idx = 0
                    while idx < 34:
                        mem[idx + ceil32(return_data.size) + ceil32(stor11[arg1 << 240].field_1 % 128) + 614] = mem[idx + 224]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    require ext_code.size(stor9)
                    call stor9.0xc5803100 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args arg1 << 240, 192, ceil32(stor11[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor11[arg1 << 240].field_1 % 128) + 320, stor11[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor11[arg1 << 240].field_1 % 128) + 96], 34, mem[ceil32(return_data.size) + ceil32(stor11[arg1 << 240].field_1 % 128) + 614 len 34], 0
                else:
                    mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                    idx = 0
                    while idx < 64:
                        mem[idx + 32] = mem[idx + 128]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    mem[ceil32(return_data.size) + 358] = msg.sender
                    mem[ceil32(return_data.size) + 390] = 0
                    mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                    mem[96] = 34
                    idx = 0
                    while idx < 34:
                        mem[idx + 128] = mem[idx + 224]
                        mem[0] = msg.sender
                        mem[32] = 18
                        idx = idx + 32
                        continue 
                    mem[162] = 0
                    require ext_code.size(stor9)
                    call stor9.mem[mem[64] len 4] with:
                       value msg.value wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] + 188]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = stor19
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor19, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor9)
    staticcall stor9.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor19, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'GG: msg.value not enough to cover messageFee. Send gas for message fees'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor11[arg1 << 240].field_0):
        if bool(stor11[arg1 << 240].field_0) == uint255(stor11[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = uint255(stor11[arg1 << 240].field_0) * 0.5
        if not bool(stor11[arg1 << 240].field_0):
            require ext_code.size(stor9)
            call stor9.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor11[arg1 << 240].field_0), Mask(248, 8, stor11[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor19, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor11[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor11[arg1 << 240].field_0) * 0.5:
                    mem[idx + ceil32(return_data.size) + 486] = stor11[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 486] = 64
                require ext_code.size(stor9)
                call stor9.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor11[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor11[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, stor19, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor19, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor9)
                call stor9.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor11[arg1 << 240].field_0) == stor11[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = stor11[arg1 << 240].field_1 % 128
        if not bool(stor11[arg1 << 240].field_0):
            require ext_code.size(stor9)
            call stor9.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor11[arg1 << 240].field_0 % 128, Mask(248, 8, stor11[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor19, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor11[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor11[arg1 << 240].field_1 % 128:
                    mem[idx + ceil32(return_data.size) + 486] = stor11[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor11[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(stor9)
                call stor9.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor11[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor11[arg1 << 240].field_1 % 128) + 320, stor11[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor11[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor19, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor19, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor9)
                call stor9.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 5
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor15.length):
                if uint255(stor15.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) > mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
                    mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]), 
            if 31 >= uint255(stor15.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
                if uint255(stor15.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) > mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                    return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
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
                mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
                if s:
                    mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
                    mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]:
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]), 
            mem[128] = uint256(stor15.field_0)
            idx = 128
            s = 0
            while (uint255(stor15.length) * 0.5) + 96 > idx:
                mem[idx + 32] = stor15[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if uint255(stor15.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) > mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if not stor15.length.field_1 % 128:
            if uint255(stor15.length) * 0.5 <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
                mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) > mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                    mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
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
            mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
            if s:
                mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                    revert with 0, 50
                mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
                mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
            mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]), 
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
            return 32, mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) + 32], 
        if 31 >= stor15.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            mem[128] = uint256(stor15.field_0)
            idx = 128
            s = 0
            while stor15.length.field_1 % 128 + 96 > idx:
                mem[idx + 32] = stor15[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if uint255(stor15.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 225] = 32
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 257] = mem[ceil32(uint255(stor15.length) * 0.5) + 192]
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])] = mem[ceil32(uint255(stor15.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]
            if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192]) > mem[ceil32(uint255(stor15.length) * 0.5) + 192]:
                mem[mem[ceil32(uint255(stor15.length) * 0.5) + 192] + ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289] = 0
            return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + 192], data=mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 289 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 192])]), 
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
        mem[ceil32(uint255(stor15.length) * 0.5) + 128] = s
        if s:
            mem[ceil32(uint255(stor15.length) * 0.5) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(uint255(stor15.length) * 0.5) + 128]:
                revert with 0, 50
            mem[t + ceil32(uint255(stor15.length) * 0.5) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])] = mem[ceil32(uint255(stor15.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 224] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor15.length) * 0.5) + 128] + ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + (uint255(stor15.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor15.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    mem[96] = stor15.length.field_1 % 128
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor15.length):
            if stor15.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor15.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
                if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                    mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                        _3718 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3718)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_3718 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3718) + 32], 
                    _3719 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3719)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_3719 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3719) + 32], 
                mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3720 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3720)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3720)]
                    if ceil32(_3720) > _3720:
                        mem[_3720 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3720) + 32], 
                _3721 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3721)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3721)]
                if ceil32(_3721) > _3721:
                    mem[_3721 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3721) + 32], 
            mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3722 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3722)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_3722 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3722) + 32], 
                _3723 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3723)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_3723 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3723) + 32], 
            mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3724 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3724)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3724)]
                if ceil32(_3724) > _3724:
                    mem[_3724 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3724) + 32], 
            _3725 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3725)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3725)]
            if ceil32(_3725) > _3725:
                mem[_3725 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3725) + 32], 
        if 31 >= uint255(stor15.length) * 0.5:
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
            if stor15.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
                mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
                    return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
                mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
                return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
            mem[ceil32(stor15.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 0, 17
                    if 48 > !(idx % 10):
                        revert with 0, 17
                    if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                        revert with 0, 50
                    mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
                if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                    mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                    mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                    if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                        _3726 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3726)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3726)]
                        if ceil32(_3726) > _3726:
                            mem[_3726 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3726) + 32], 
                    _3727 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3727)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3727)]
                    if ceil32(_3727) > _3727:
                        mem[_3727 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3727) + 32], 
                mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3728 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3728)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_3728 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3728) + 32], 
                _3729 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3729)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_3729 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3729) + 32], 
            mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3730 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3730)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3730)]
                    if ceil32(_3730) > _3730:
                        mem[_3730 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3730) + 32], 
                _3731 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3731)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3731)]
                if ceil32(_3731) > _3731:
                    mem[_3731 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3731) + 32], 
            mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3732 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3732)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_3732 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3732) + 32], 
            _3733 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3733)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_3733 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3733) + 32], 
        mem[0] = 15
        mem[128] = uint256(stor15.field_0)
        idx = 128
        s = 0
        while (uint255(stor15.length) * 0.5) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if stor15.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                    _4422 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4422)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4422)]
                    if ceil32(_4422) > _4422:
                        mem[_4422 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4422) + 32], 
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                _4423 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4423)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4423)]
                if ceil32(_4423) > _4423:
                    mem[_4423 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4423) + 32], 
            mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                _4424 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4424)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4424)]
                if ceil32(_4424) > _4424:
                    mem[_4424 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4424) + 32], 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4425 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4425)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4425)]
            if ceil32(_4425) > _4425:
                mem[_4425 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4425) + 32], 
        mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
        if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                _4426 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4426)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4426)]
                if ceil32(_4426) > _4426:
                    mem[_4426 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4426) + 32], 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4427 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4427)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4427)]
            if ceil32(_4427) > _4427:
                mem[_4427 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4427) + 32], 
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4428 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4428)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4428)]
            if ceil32(_4428) > _4428:
                mem[_4428 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4428) + 32], 
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        _4429 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4429)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4429)]
        if ceil32(_4429) > _4429:
            mem[_4429 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4429) + 32], 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    if not stor15.length.field_1 % 128:
        if stor15.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3734 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3734)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_3734 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3734) + 32], 
                _3735 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3735)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_3735 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3735) + 32], 
            mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3736 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3736)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3736)]
                if ceil32(_3736) > _3736:
                    mem[_3736 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3736) + 32], 
            _3737 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3737)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3737)]
            if ceil32(_3737) > _3737:
                mem[_3737 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3737) + 32], 
        mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
        if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3738 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3738)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_3738 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3738) + 32], 
            _3739 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3739)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_3739 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3739) + 32], 
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            _3740 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3740)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3740)]
            if ceil32(_3740) > _3740:
                mem[_3740 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3740) + 32], 
        _3741 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3741)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3741)]
        if ceil32(_3741) > _3741:
            mem[_3741 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3741) + 32], 
    if 31 >= stor15.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        if stor15.length.field_1 % 128 <= 0:
            return ''
        if not arg1:
            mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
            mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
                return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
            return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
        mem[ceil32(stor15.length.field_1 % 128) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    revert with 0, 50
                mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
            if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
                mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                    _3742 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3742)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3742)]
                    if ceil32(_3742) > _3742:
                        mem[_3742 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3742) + 32], 
                _3743 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3743)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3743)]
                if ceil32(_3743) > _3743:
                    mem[_3743 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3743) + 32], 
            mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3744 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3744)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_3744 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3744) + 32], 
            _3745 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3745)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_3745 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3745) + 32], 
        mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
        if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                _3746 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3746)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3746)]
                if ceil32(_3746) > _3746:
                    mem[_3746 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3746) + 32], 
            _3747 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3747)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3747)]
            if ceil32(_3747) > _3747:
                mem[_3747 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3747) + 32], 
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            _3748 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3748)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_3748 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3748) + 32], 
        _3749 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_3749)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_3749 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_3749) + 32], 
    mem[0] = 15
    mem[128] = uint256(stor15.field_0)
    idx = 128
    s = 0
    while stor15.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor15[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if stor15.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor15.length.field_1 % 128) + 192]
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])] = mem[ceil32(stor15.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) <= mem[ceil32(stor15.length.field_1 % 128) + 192]:
            return Array(len=mem[ceil32(stor15.length.field_1 % 128) + 192], data=mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192])]), 
        mem[mem[ceil32(stor15.length.field_1 % 128) + 192] + ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 289] = 0
        return 32, mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 192]) + 32], 
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
    mem[ceil32(stor15.length.field_1 % 128) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                revert with 0, 50
            mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
        if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
            mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
                mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
                _4430 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
                mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4430)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4430)]
                if ceil32(_4430) > _4430:
                    mem[_4430 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
                return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4430) + 32], 
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4431 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4431)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4431)]
            if ceil32(_4431) > _4431:
                mem[_4431 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4431) + 32], 
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4432 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4432)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4432)]
            if ceil32(_4432) > _4432:
                mem[_4432 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4432) + 32], 
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        _4433 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4433)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4433)]
        if ceil32(_4433) > _4433:
            mem[_4433 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4433) + 32], 
    mem[ceil32(stor15.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            revert with 0, 50
        mem[t + ceil32(stor15.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) <= stor15.length.field_1 % 128:
        mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
        if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
            mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
            _4434 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
            mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4434)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4434)]
            if ceil32(_4434) > _4434:
                mem[_4434 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
            return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4434) + 32], 
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        _4435 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4435)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4435)]
        if ceil32(_4435) > _4435:
            mem[_4435 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4435) + 32], 
    mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])] = mem[ceil32(stor15.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128])]
    if ceil32(mem[ceil32(stor15.length.field_1 % 128) + 128]) <= mem[ceil32(stor15.length.field_1 % 128) + 128]:
        mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
        _4436 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
        mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4436)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4436)]
        if ceil32(_4436) > _4436:
            mem[_4436 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
        return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4436) + 32], 
    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 0
    mem[64] = mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192
    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 192] = 32
    _4437 = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256 len ceil32(_4437)] = mem[ceil32(stor15.length.field_1 % 128) + ceil32(s) + 192 len ceil32(_4437)]
    if ceil32(_4437) > _4437:
        mem[_4437 + mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 256] = 0
    return 32, mem[mem[ceil32(stor15.length.field_1 % 128) + 128] + ceil32(stor15.length.field_1 % 128) + ceil32(s) + stor15.length.field_1 % 128 + 224 len ceil32(_4437) + 32], 
}



}
