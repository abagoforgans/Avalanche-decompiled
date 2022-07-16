contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
address stor7;
mapping of struct sub_8ee74912;
mapping of struct stor9;
address _owner;
array of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function _owner() {
    return _owner
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor6[address(arg1)][address(arg2)])
}

function donate() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call _owner with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw Ether'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
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
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while (uint255(stor11.length) * 0.5) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while stor11.length.field_1 % 128 + 31 / 32 > idx:
                stor11[idx].field_0 = 0
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
            if not stor6[stor3[arg3]][address(msg.sender)]:
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
}

function name() {
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

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor2.length.field_1 % 128:
                if 31 < stor2.length.field_1 % 128:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[(uint255(stor2.length) * 0.5) + ceil32(uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor2.length.field_1 % 128:
            if 31 < stor2.length.field_1 % 128:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    mem[ceil32(stor2.length.field_1 % 128) + 192 len ceil32(stor2.length.field_1 % 128)] = mem[128 len ceil32(stor2.length.field_1 % 128)]
    if ceil32(stor2.length.field_1 % 128) > stor2.length.field_1 % 128:
        mem[stor2.length.field_1 % 128 + ceil32(stor2.length.field_1 % 128) + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
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
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_42][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0 = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
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

function mint(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= 6:
        revert with 0, 'Max 5 NFTs per transaction'
    if stor12 <= 1000:
        if stor12 > !arg1:
            revert with 0, 17
        if stor12 + arg1 > stor13:
            revert with 0, 'Mint exceeds supply'
        idx = 0
        while idx < arg1:
            if stor12 == -1:
                revert with 0, 17
            stor12++
            _83 = mem[64]
            mem[64] = mem[64] + 32
            mem[_83] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12 + 1
            mem[32] = 3
            ownerOf[stor12 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor12 + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _83 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12 + 1, 128, 0
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
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_163] == Mask(32, 224, mem[_163])
                if Mask(32, 224, mem[_163]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor14 and arg1 > -1 / stor14:
            revert with 0, 17
        if stor14 * arg1 > msg.value:
            revert with 0, 'Not enough amount sent.'
        if stor12 > !arg1:
            revert with 0, 17
        if stor12 + arg1 > stor13:
            revert with 0, 'Mint exceeds supply'
        idx = 0
        while idx < arg1:
            if stor12 == -1:
                revert with 0, 17
            stor12++
            _84 = mem[64]
            mem[64] = mem[64] + 32
            mem[_84] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if balanceOf[address(msg.sender)] > -2:
                revert with 0, 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12 + 1
            mem[32] = 3
            ownerOf[stor12 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor12 + 1);
            if ext_code.size(msg.sender):
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[s + mem[64] + 164] = mem[s + _84 + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, stor12 + 1, 128, 0
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
                _165 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_165] == Mask(32, 224, mem[_165])
                if Mask(32, 224, mem[_165]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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
    if balanceOf[stor3[arg2]] < 1:
        revert with 0, 17
    balanceOf[stor3[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = stor15
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor15, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor15, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'msg.value not enough to cover messageFee. Send gas for message fees'
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor15, ext_call.return_data[0 len 30] >> 16, 0
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
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, stor15, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor15, ext_call.return_data[0 len 30]
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor15, ext_call.return_data[0 len 30] >> 16, 0
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
                    args arg1 << 240, 192, ceil32(stor9[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[arg1 << 240].field_1 % 128) + 320, stor9[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor9[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor15, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor15, ext_call.return_data[0 len 30]
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
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist.'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor11.length) * 0.5 <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor11.length):
                    mem[192] = Mask(248, 8, stor11.length)
                else:
                    if bool(stor11.length) != 1:
                        mem[64] = 6
                        _254 = mem[160]
                        mem[38] = mem[160]
                        mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                        if ceil32(_254) > _254:
                            mem[_254 + 70] = 0
                        return memory
                          from mem[64]
                           len ceil32(_254) + -mem[64] + 70
                    idx = 0
                    s = 0
                    while idx < uint255(stor11.length) * 0.5:
                        mem[idx + 192] = stor11[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[(uint255(stor11.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor11.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                mem[(uint255(stor11.length) * 0.5) + 198] = 32
                mem[(uint255(stor11.length) * 0.5) + 230] = mem[160]
                mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(mem[160]) > mem[160]:
                    mem[mem[160] + (uint255(stor11.length) * 0.5) + 262] = 0
                return Array(len=mem[160], data=mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])])
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _258 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_258) > _258:
                        mem[_258 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_258) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < stor11.length.field_1 % 128:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor11.length.field_1 % 128 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[stor11.length.field_1 % 128 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[stor11.length.field_1 % 128 + 198] = 32
            mem[stor11.length.field_1 % 128 + 230] = mem[160]
            mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + stor11.length.field_1 % 128 + 262] = 0
            return Array(len=mem[160], data=mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[96]:
                    revert with 0, 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _732 = mem[64]
            if bool(stor11.length):
                if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor11.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                    _808 = mem[96]
                    mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_808) <= _808:
                        _1196 = mem[64]
                        mem[64] = _732 + (uint255(stor11.length) * 0.5) + _808 + 37
                        mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 37] = 32
                        _1284 = mem[_1196]
                        mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 69] = mem[_1196]
                        mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 101 len ceil32(_1284)] = mem[_1196 + 32 len ceil32(_1284)]
                        if ceil32(_1284) > _1284:
                            mem[_1284 + _732 + (uint255(stor11.length) * 0.5) + _808 + 101] = 0
                        return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 69 len ceil32(_1284) + 32]
                    _1197 = mem[64]
                    mem[64] = _732 + (uint255(stor11.length) * 0.5) + _808 + 37
                    mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 37] = 32
                    _1285 = mem[_1197]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 69] = mem[_1197]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 101 len ceil32(_1285)] = mem[_1197 + 32 len ceil32(_1285)]
                    if ceil32(_1285) > _1285:
                        mem[_1285 + _732 + (uint255(stor11.length) * 0.5) + _808 + 101] = 0
                    return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _808 + 69 len ceil32(_1285) + 32]
                if bool(stor11.length) != 1:
                    _816 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_816] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                    if ceil32(_816) <= _816:
                        _1198 = mem[64]
                        mem[64] = _816 + 5
                        mem[_816 + 5] = 32
                        _1286 = mem[_1198]
                        mem[_816 + 37] = mem[_1198]
                        mem[_816 + 69 len ceil32(_1286)] = mem[_1198 + 32 len ceil32(_1286)]
                        if ceil32(_1286) > _1286:
                            mem[_1286 + _816 + 69] = 0
                        return 32, mem[_816 + 37 len ceil32(_1286) + 32]
                    _1199 = mem[64]
                    mem[64] = _816 + 5
                    mem[_816 + 5] = 32
                    _1287 = mem[_1199]
                    mem[_816 + 37] = mem[_1199]
                    mem[_816 + 69 len ceil32(_1287)] = mem[_1199 + 32 len ceil32(_1287)]
                    if ceil32(_1287) > _1287:
                        mem[_1287 + _816 + 69] = 0
                    return 32, mem[_816 + 37 len ceil32(_1287) + 32]
                mem[0] = 11
                idx = 0
                s = 0
                while idx < uint255(stor11.length) * 0.5:
                    mem[idx + _732 + 32] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1188 = mem[96]
                mem[_732 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_1188) <= _1188:
                    _1548 = mem[64]
                    mem[64] = _732 + (uint255(stor11.length) * 0.5) + _1188 + 37
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 37] = 32
                    _1644 = mem[_1548]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69] = mem[_1548]
                    mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 101 len ceil32(_1644)] = mem[_1548 + 32 len ceil32(_1644)]
                    if ceil32(_1644) > _1644:
                        mem[_1644 + _732 + (uint255(stor11.length) * 0.5) + _1188 + 101] = 0
                    return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69 len ceil32(_1644) + 32]
                _1549 = mem[64]
                mem[64] = _732 + (uint255(stor11.length) * 0.5) + _1188 + 37
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 37] = 32
                _1645 = mem[_1549]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69] = mem[_1549]
                mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 101 len ceil32(_1645)] = mem[_1549 + 32 len ceil32(_1645)]
                if ceil32(_1645) > _1645:
                    mem[_1645 + _732 + (uint255(stor11.length) * 0.5) + _1188 + 101] = 0
                return 32, mem[_732 + (uint255(stor11.length) * 0.5) + _1188 + 69 len ceil32(_1645) + 32]
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _817 = mem[96]
                mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(mem[96]) <= mem[96]:
                    _1200 = mem[64]
                    mem[64] = _732 + stor11.length.field_1 % 128 + _817 + 37
                    mem[_732 + stor11.length.field_1 % 128 + _817 + 37] = 32
                    _1288 = mem[_1200]
                    mem[_732 + stor11.length.field_1 % 128 + _817 + 69] = mem[_1200]
                    mem[_732 + stor11.length.field_1 % 128 + _817 + 101 len ceil32(_1288)] = mem[_1200 + 32 len ceil32(_1288)]
                    if ceil32(_1288) > _1288:
                        mem[_1288 + _732 + stor11.length.field_1 % 128 + _817 + 101] = 0
                    return 32, mem[_732 + stor11.length.field_1 % 128 + _817 + 69 len ceil32(_1288) + 32]
                _1201 = mem[64]
                mem[64] = _732 + stor11.length.field_1 % 128 + _817 + 37
                mem[_732 + stor11.length.field_1 % 128 + _817 + 37] = 32
                _1289 = mem[_1201]
                mem[_732 + stor11.length.field_1 % 128 + _817 + 69] = mem[_1201]
                mem[_732 + stor11.length.field_1 % 128 + _817 + 101 len ceil32(_1289)] = mem[_1201 + 32 len ceil32(_1289)]
                if ceil32(_1289) > _1289:
                    mem[_1289 + _732 + stor11.length.field_1 % 128 + _817 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 % 128 + _817 + 69 len ceil32(_1289) + 32]
            if bool(stor11.length) != 1:
                _824 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_824] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_824) <= _824:
                    _1202 = mem[64]
                    mem[64] = _824 + 5
                    mem[_824 + 5] = 32
                    _1290 = mem[_1202]
                    mem[_824 + 37] = mem[_1202]
                    mem[_824 + 69 len ceil32(_1290)] = mem[_1202 + 32 len ceil32(_1290)]
                    if ceil32(_1290) > _1290:
                        mem[_1290 + _824 + 69] = 0
                    return 32, mem[_824 + 37 len ceil32(_1290) + 32]
                _1203 = mem[64]
                mem[64] = _824 + 5
                mem[_824 + 5] = 32
                _1291 = mem[_1203]
                mem[_824 + 37] = mem[_1203]
                mem[_824 + 69 len ceil32(_1291)] = mem[_1203 + 32 len ceil32(_1291)]
                if ceil32(_1291) > _1291:
                    mem[_1291 + _824 + 69] = 0
                return 32, mem[_824 + 37 len ceil32(_1291) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[idx + _732 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1189 = mem[96]
            mem[_732 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1189) <= _1189:
                _1550 = mem[64]
                mem[64] = _732 + stor11.length.field_1 % 128 + _1189 + 37
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 37] = 32
                _1646 = mem[_1550]
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 69] = mem[_1550]
                mem[_732 + stor11.length.field_1 % 128 + _1189 + 101 len ceil32(_1646)] = mem[_1550 + 32 len ceil32(_1646)]
                if ceil32(_1646) > _1646:
                    mem[_1646 + _732 + stor11.length.field_1 % 128 + _1189 + 101] = 0
                return 32, mem[_732 + stor11.length.field_1 % 128 + _1189 + 69 len ceil32(_1646) + 32]
            _1551 = mem[64]
            mem[64] = _732 + stor11.length.field_1 % 128 + _1189 + 37
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 37] = 32
            _1647 = mem[_1551]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 69] = mem[_1551]
            mem[_732 + stor11.length.field_1 % 128 + _1189 + 101 len ceil32(_1647)] = mem[_1551 + 32 len ceil32(_1647)]
            if ceil32(_1647) > _1647:
                mem[_1647 + _732 + stor11.length.field_1 % 128 + _1189 + 101] = 0
            return 32, mem[_732 + stor11.length.field_1 % 128 + _1189 + 69 len ceil32(_1647) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _733 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _810 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_810) <= _810:
                    _1204 = mem[64]
                    mem[64] = _733 + (uint255(stor11.length) * 0.5) + _810 + 37
                    mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 37] = 32
                    _1292 = mem[_1204]
                    mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 69] = mem[_1204]
                    mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 101 len ceil32(_1292)] = mem[_1204 + 32 len ceil32(_1292)]
                    if ceil32(_1292) > _1292:
                        mem[_1292 + _733 + (uint255(stor11.length) * 0.5) + _810 + 101] = 0
                    return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 69 len ceil32(_1292) + 32]
                _1205 = mem[64]
                mem[64] = _733 + (uint255(stor11.length) * 0.5) + _810 + 37
                mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 37] = 32
                _1293 = mem[_1205]
                mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 69] = mem[_1205]
                mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 101 len ceil32(_1293)] = mem[_1205 + 32 len ceil32(_1293)]
                if ceil32(_1293) > _1293:
                    mem[_1293 + _733 + (uint255(stor11.length) * 0.5) + _810 + 101] = 0
                return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _810 + 69 len ceil32(_1293) + 32]
            if bool(stor11.length) != 1:
                _818 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_818] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_818) <= _818:
                    _1206 = mem[64]
                    mem[64] = _818 + 5
                    mem[_818 + 5] = 32
                    _1294 = mem[_1206]
                    mem[_818 + 37] = mem[_1206]
                    mem[_818 + 69 len ceil32(_1294)] = mem[_1206 + 32 len ceil32(_1294)]
                    if ceil32(_1294) > _1294:
                        mem[_1294 + _818 + 69] = 0
                    return 32, mem[_818 + 37 len ceil32(_1294) + 32]
                _1207 = mem[64]
                mem[64] = _818 + 5
                mem[_818 + 5] = 32
                _1295 = mem[_1207]
                mem[_818 + 37] = mem[_1207]
                mem[_818 + 69 len ceil32(_1295)] = mem[_1207 + 32 len ceil32(_1295)]
                if ceil32(_1295) > _1295:
                    mem[_1295 + _818 + 69] = 0
                return 32, mem[_818 + 37 len ceil32(_1295) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _733 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1190 = mem[96]
            mem[_733 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1190) <= _1190:
                _1552 = mem[64]
                mem[64] = _733 + (uint255(stor11.length) * 0.5) + _1190 + 37
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 37] = 32
                _1648 = mem[_1552]
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69] = mem[_1552]
                mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 101 len ceil32(_1648)] = mem[_1552 + 32 len ceil32(_1648)]
                if ceil32(_1648) > _1648:
                    mem[_1648 + _733 + (uint255(stor11.length) * 0.5) + _1190 + 101] = 0
                return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69 len ceil32(_1648) + 32]
            _1553 = mem[64]
            mem[64] = _733 + (uint255(stor11.length) * 0.5) + _1190 + 37
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 37] = 32
            _1649 = mem[_1553]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69] = mem[_1553]
            mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 101 len ceil32(_1649)] = mem[_1553 + 32 len ceil32(_1649)]
            if ceil32(_1649) > _1649:
                mem[_1649 + _733 + (uint255(stor11.length) * 0.5) + _1190 + 101] = 0
            return 32, mem[_733 + (uint255(stor11.length) * 0.5) + _1190 + 69 len ceil32(_1649) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _819 = mem[96]
            mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1208 = mem[64]
                mem[64] = _733 + stor11.length.field_1 % 128 + _819 + 37
                mem[_733 + stor11.length.field_1 % 128 + _819 + 37] = 32
                _1296 = mem[_1208]
                mem[_733 + stor11.length.field_1 % 128 + _819 + 69] = mem[_1208]
                mem[_733 + stor11.length.field_1 % 128 + _819 + 101 len ceil32(_1296)] = mem[_1208 + 32 len ceil32(_1296)]
                if ceil32(_1296) > _1296:
                    mem[_1296 + _733 + stor11.length.field_1 % 128 + _819 + 101] = 0
                return 32, mem[_733 + stor11.length.field_1 % 128 + _819 + 69 len ceil32(_1296) + 32]
            _1209 = mem[64]
            mem[64] = _733 + stor11.length.field_1 % 128 + _819 + 37
            mem[_733 + stor11.length.field_1 % 128 + _819 + 37] = 32
            _1297 = mem[_1209]
            mem[_733 + stor11.length.field_1 % 128 + _819 + 69] = mem[_1209]
            mem[_733 + stor11.length.field_1 % 128 + _819 + 101 len ceil32(_1297)] = mem[_1209 + 32 len ceil32(_1297)]
            if ceil32(_1297) > _1297:
                mem[_1297 + _733 + stor11.length.field_1 % 128 + _819 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 % 128 + _819 + 69 len ceil32(_1297) + 32]
        if bool(stor11.length) != 1:
            _825 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_825] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_825) <= _825:
                _1210 = mem[64]
                mem[64] = _825 + 5
                mem[_825 + 5] = 32
                _1298 = mem[_1210]
                mem[_825 + 37] = mem[_1210]
                mem[_825 + 69 len ceil32(_1298)] = mem[_1210 + 32 len ceil32(_1298)]
                if ceil32(_1298) > _1298:
                    mem[_1298 + _825 + 69] = 0
                return 32, mem[_825 + 37 len ceil32(_1298) + 32]
            _1211 = mem[64]
            mem[64] = _825 + 5
            mem[_825 + 5] = 32
            _1299 = mem[_1211]
            mem[_825 + 37] = mem[_1211]
            mem[_825 + 69 len ceil32(_1299)] = mem[_1211 + 32 len ceil32(_1299)]
            if ceil32(_1299) > _1299:
                mem[_1299 + _825 + 69] = 0
            return 32, mem[_825 + 37 len ceil32(_1299) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1 % 128:
            mem[idx + _733 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1191 = mem[96]
        mem[_733 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1191) <= _1191:
            _1554 = mem[64]
            mem[64] = _733 + stor11.length.field_1 % 128 + _1191 + 37
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 37] = 32
            _1650 = mem[_1554]
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 69] = mem[_1554]
            mem[_733 + stor11.length.field_1 % 128 + _1191 + 101 len ceil32(_1650)] = mem[_1554 + 32 len ceil32(_1650)]
            if ceil32(_1650) > _1650:
                mem[_1650 + _733 + stor11.length.field_1 % 128 + _1191 + 101] = 0
            return 32, mem[_733 + stor11.length.field_1 % 128 + _1191 + 69 len ceil32(_1650) + 32]
        _1555 = mem[64]
        mem[64] = _733 + stor11.length.field_1 % 128 + _1191 + 37
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 37] = 32
        _1651 = mem[_1555]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 69] = mem[_1555]
        mem[_733 + stor11.length.field_1 % 128 + _1191 + 101 len ceil32(_1651)] = mem[_1555 + 32 len ceil32(_1651)]
        if ceil32(_1651) > _1651:
            mem[_1651 + _733 + stor11.length.field_1 % 128 + _1191 + 101] = 0
        return 32, mem[_733 + stor11.length.field_1 % 128 + _1191 + 69 len ceil32(_1651) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 0, 34
    if stor11.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[192] = Mask(248, 8, stor11.length)
            else:
                if bool(stor11.length) != 1:
                    mem[64] = 6
                    _263 = mem[160]
                    mem[38] = mem[160]
                    mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                    if ceil32(_263) > _263:
                        mem[_263 + 70] = 0
                    return memory
                      from mem[64]
                       len ceil32(_263) + -mem[64] + 70
                idx = 0
                s = 0
                while idx < uint255(stor11.length) * 0.5:
                    mem[idx + 192] = stor11[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(uint255(stor11.length) * 0.5) + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            mem[(uint255(stor11.length) * 0.5) + 198] = 32
            mem[(uint255(stor11.length) * 0.5) + 230] = mem[160]
            mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
            if ceil32(mem[160]) > mem[160]:
                mem[mem[160] + (uint255(stor11.length) * 0.5) + 262] = 0
            return Array(len=mem[160], data=mem[(uint255(stor11.length) * 0.5) + 262 len ceil32(mem[160])])
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[192] = Mask(248, 8, stor11.length)
        else:
            if bool(stor11.length) != 1:
                mem[64] = 6
                _267 = mem[160]
                mem[38] = mem[160]
                mem[70 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
                if ceil32(_267) > _267:
                    mem[_267 + 70] = 0
                return memory
                  from mem[64]
                   len ceil32(_267) + -mem[64] + 70
            idx = 0
            s = 0
            while idx < stor11.length.field_1 % 128:
                mem[idx + 192] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor11.length.field_1 % 128 + 192] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 % 128 + 193] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        mem[stor11.length.field_1 % 128 + 198] = 32
        mem[stor11.length.field_1 % 128 + 230] = mem[160]
        mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
        if ceil32(mem[160]) > mem[160]:
            mem[mem[160] + stor11.length.field_1 % 128 + 262] = 0
        return Array(len=mem[160], data=mem[stor11.length.field_1 % 128 + 262 len ceil32(mem[160])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 0, 17
            if 48 > !(idx % 10):
                revert with 0, 17
            if t - 1 >= mem[96]:
                revert with 0, 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _734 = mem[64]
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor11.length):
                mem[mem[64] + 32] = Mask(248, 8, stor11.length)
                _812 = mem[96]
                mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_812) <= _812:
                    _1212 = mem[64]
                    mem[64] = _734 + (uint255(stor11.length) * 0.5) + _812 + 37
                    mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 37] = 32
                    _1300 = mem[_1212]
                    mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 69] = mem[_1212]
                    mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 101 len ceil32(_1300)] = mem[_1212 + 32 len ceil32(_1300)]
                    if ceil32(_1300) > _1300:
                        mem[_1300 + _734 + (uint255(stor11.length) * 0.5) + _812 + 101] = 0
                    return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 69 len ceil32(_1300) + 32]
                _1213 = mem[64]
                mem[64] = _734 + (uint255(stor11.length) * 0.5) + _812 + 37
                mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 37] = 32
                _1301 = mem[_1213]
                mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 69] = mem[_1213]
                mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 101 len ceil32(_1301)] = mem[_1213 + 32 len ceil32(_1301)]
                if ceil32(_1301) > _1301:
                    mem[_1301 + _734 + (uint255(stor11.length) * 0.5) + _812 + 101] = 0
                return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _812 + 69 len ceil32(_1301) + 32]
            if bool(stor11.length) != 1:
                _820 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_820] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
                if ceil32(_820) <= _820:
                    _1214 = mem[64]
                    mem[64] = _820 + 5
                    mem[_820 + 5] = 32
                    _1302 = mem[_1214]
                    mem[_820 + 37] = mem[_1214]
                    mem[_820 + 69 len ceil32(_1302)] = mem[_1214 + 32 len ceil32(_1302)]
                    if ceil32(_1302) > _1302:
                        mem[_1302 + _820 + 69] = 0
                    return 32, mem[_820 + 37 len ceil32(_1302) + 32]
                _1215 = mem[64]
                mem[64] = _820 + 5
                mem[_820 + 5] = 32
                _1303 = mem[_1215]
                mem[_820 + 37] = mem[_1215]
                mem[_820 + 69 len ceil32(_1303)] = mem[_1215 + 32 len ceil32(_1303)]
                if ceil32(_1303) > _1303:
                    mem[_1303 + _820 + 69] = 0
                return 32, mem[_820 + 37 len ceil32(_1303) + 32]
            mem[0] = 11
            idx = 0
            s = 0
            while idx < uint255(stor11.length) * 0.5:
                mem[idx + _734 + 32] = stor11[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _1192 = mem[96]
            mem[_734 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_1192) <= _1192:
                _1556 = mem[64]
                mem[64] = _734 + (uint255(stor11.length) * 0.5) + _1192 + 37
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 37] = 32
                _1652 = mem[_1556]
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69] = mem[_1556]
                mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 101 len ceil32(_1652)] = mem[_1556 + 32 len ceil32(_1652)]
                if ceil32(_1652) > _1652:
                    mem[_1652 + _734 + (uint255(stor11.length) * 0.5) + _1192 + 101] = 0
                return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69 len ceil32(_1652) + 32]
            _1557 = mem[64]
            mem[64] = _734 + (uint255(stor11.length) * 0.5) + _1192 + 37
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 37] = 32
            _1653 = mem[_1557]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69] = mem[_1557]
            mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 101 len ceil32(_1653)] = mem[_1557 + 32 len ceil32(_1653)]
            if ceil32(_1653) > _1653:
                mem[_1653 + _734 + (uint255(stor11.length) * 0.5) + _1192 + 101] = 0
            return 32, mem[_734 + (uint255(stor11.length) * 0.5) + _1192 + 69 len ceil32(_1653) + 32]
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _821 = mem[96]
            mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(mem[96]) <= mem[96]:
                _1216 = mem[64]
                mem[64] = _734 + stor11.length.field_1 % 128 + _821 + 37
                mem[_734 + stor11.length.field_1 % 128 + _821 + 37] = 32
                _1304 = mem[_1216]
                mem[_734 + stor11.length.field_1 % 128 + _821 + 69] = mem[_1216]
                mem[_734 + stor11.length.field_1 % 128 + _821 + 101 len ceil32(_1304)] = mem[_1216 + 32 len ceil32(_1304)]
                if ceil32(_1304) > _1304:
                    mem[_1304 + _734 + stor11.length.field_1 % 128 + _821 + 101] = 0
                return 32, mem[_734 + stor11.length.field_1 % 128 + _821 + 69 len ceil32(_1304) + 32]
            _1217 = mem[64]
            mem[64] = _734 + stor11.length.field_1 % 128 + _821 + 37
            mem[_734 + stor11.length.field_1 % 128 + _821 + 37] = 32
            _1305 = mem[_1217]
            mem[_734 + stor11.length.field_1 % 128 + _821 + 69] = mem[_1217]
            mem[_734 + stor11.length.field_1 % 128 + _821 + 101 len ceil32(_1305)] = mem[_1217 + 32 len ceil32(_1305)]
            if ceil32(_1305) > _1305:
                mem[_1305 + _734 + stor11.length.field_1 % 128 + _821 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 % 128 + _821 + 69 len ceil32(_1305) + 32]
        if bool(stor11.length) != 1:
            _826 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_826] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_826) <= _826:
                _1218 = mem[64]
                mem[64] = _826 + 5
                mem[_826 + 5] = 32
                _1306 = mem[_1218]
                mem[_826 + 37] = mem[_1218]
                mem[_826 + 69 len ceil32(_1306)] = mem[_1218 + 32 len ceil32(_1306)]
                if ceil32(_1306) > _1306:
                    mem[_1306 + _826 + 69] = 0
                return 32, mem[_826 + 37 len ceil32(_1306) + 32]
            _1219 = mem[64]
            mem[64] = _826 + 5
            mem[_826 + 5] = 32
            _1307 = mem[_1219]
            mem[_826 + 37] = mem[_1219]
            mem[_826 + 69 len ceil32(_1307)] = mem[_1219 + 32 len ceil32(_1307)]
            if ceil32(_1307) > _1307:
                mem[_1307 + _826 + 69] = 0
            return 32, mem[_826 + 37 len ceil32(_1307) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < stor11.length.field_1 % 128:
            mem[idx + _734 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1193 = mem[96]
        mem[_734 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1193) <= _1193:
            _1558 = mem[64]
            mem[64] = _734 + stor11.length.field_1 % 128 + _1193 + 37
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 37] = 32
            _1654 = mem[_1558]
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 69] = mem[_1558]
            mem[_734 + stor11.length.field_1 % 128 + _1193 + 101 len ceil32(_1654)] = mem[_1558 + 32 len ceil32(_1654)]
            if ceil32(_1654) > _1654:
                mem[_1654 + _734 + stor11.length.field_1 % 128 + _1193 + 101] = 0
            return 32, mem[_734 + stor11.length.field_1 % 128 + _1193 + 69 len ceil32(_1654) + 32]
        _1559 = mem[64]
        mem[64] = _734 + stor11.length.field_1 % 128 + _1193 + 37
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 37] = 32
        _1655 = mem[_1559]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 69] = mem[_1559]
        mem[_734 + stor11.length.field_1 % 128 + _1193 + 101 len ceil32(_1655)] = mem[_1559 + 32 len ceil32(_1655)]
        if ceil32(_1655) > _1655:
            mem[_1655 + _734 + stor11.length.field_1 % 128 + _1193 + 101] = 0
        return 32, mem[_734 + stor11.length.field_1 % 128 + _1193 + 69 len ceil32(_1655) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 0, 17
        if 48 > !(idx % 10):
            revert with 0, 17
        if t - 1 >= mem[96]:
            revert with 0, 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _735 = mem[64]
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor11.length):
            mem[mem[64] + 32] = Mask(248, 8, stor11.length)
            _814 = mem[96]
            mem[mem[64] + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_814) <= _814:
                _1220 = mem[64]
                mem[64] = _735 + (uint255(stor11.length) * 0.5) + _814 + 37
                mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 37] = 32
                _1308 = mem[_1220]
                mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 69] = mem[_1220]
                mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 101 len ceil32(_1308)] = mem[_1220 + 32 len ceil32(_1308)]
                if ceil32(_1308) > _1308:
                    mem[_1308 + _735 + (uint255(stor11.length) * 0.5) + _814 + 101] = 0
                return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 69 len ceil32(_1308) + 32]
            _1221 = mem[64]
            mem[64] = _735 + (uint255(stor11.length) * 0.5) + _814 + 37
            mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 37] = 32
            _1309 = mem[_1221]
            mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 69] = mem[_1221]
            mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 101 len ceil32(_1309)] = mem[_1221 + 32 len ceil32(_1309)]
            if ceil32(_1309) > _1309:
                mem[_1309 + _735 + (uint255(stor11.length) * 0.5) + _814 + 101] = 0
            return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _814 + 69 len ceil32(_1309) + 32]
        if bool(stor11.length) != 1:
            _822 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_822] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
            if ceil32(_822) <= _822:
                _1222 = mem[64]
                mem[64] = _822 + 5
                mem[_822 + 5] = 32
                _1310 = mem[_1222]
                mem[_822 + 37] = mem[_1222]
                mem[_822 + 69 len ceil32(_1310)] = mem[_1222 + 32 len ceil32(_1310)]
                if ceil32(_1310) > _1310:
                    mem[_1310 + _822 + 69] = 0
                return 32, mem[_822 + 37 len ceil32(_1310) + 32]
            _1223 = mem[64]
            mem[64] = _822 + 5
            mem[_822 + 5] = 32
            _1311 = mem[_1223]
            mem[_822 + 37] = mem[_1223]
            mem[_822 + 69 len ceil32(_1311)] = mem[_1223 + 32 len ceil32(_1311)]
            if ceil32(_1311) > _1311:
                mem[_1311 + _822 + 69] = 0
            return 32, mem[_822 + 37 len ceil32(_1311) + 32]
        mem[0] = 11
        idx = 0
        s = 0
        while idx < uint255(stor11.length) * 0.5:
            mem[idx + _735 + 32] = stor11[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _1194 = mem[96]
        mem[_735 + (uint255(stor11.length) * 0.5) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_1194) <= _1194:
            _1560 = mem[64]
            mem[64] = _735 + (uint255(stor11.length) * 0.5) + _1194 + 37
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 37] = 32
            _1656 = mem[_1560]
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69] = mem[_1560]
            mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 101 len ceil32(_1656)] = mem[_1560 + 32 len ceil32(_1656)]
            if ceil32(_1656) > _1656:
                mem[_1656 + _735 + (uint255(stor11.length) * 0.5) + _1194 + 101] = 0
            return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69 len ceil32(_1656) + 32]
        _1561 = mem[64]
        mem[64] = _735 + (uint255(stor11.length) * 0.5) + _1194 + 37
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 37] = 32
        _1657 = mem[_1561]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69] = mem[_1561]
        mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 101 len ceil32(_1657)] = mem[_1561 + 32 len ceil32(_1657)]
        if ceil32(_1657) > _1657:
            mem[_1657 + _735 + (uint255(stor11.length) * 0.5) + _1194 + 101] = 0
        return 32, mem[_735 + (uint255(stor11.length) * 0.5) + _1194 + 69 len ceil32(_1657) + 32]
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor11.length):
        mem[mem[64] + 32] = Mask(248, 8, stor11.length)
        _823 = mem[96]
        mem[mem[64] + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor11.length.field_1 % 128 + mem[96] + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(mem[96]) <= mem[96]:
            _1224 = mem[64]
            mem[64] = _735 + stor11.length.field_1 % 128 + _823 + 37
            mem[_735 + stor11.length.field_1 % 128 + _823 + 37] = 32
            _1312 = mem[_1224]
            mem[_735 + stor11.length.field_1 % 128 + _823 + 69] = mem[_1224]
            mem[_735 + stor11.length.field_1 % 128 + _823 + 101 len ceil32(_1312)] = mem[_1224 + 32 len ceil32(_1312)]
            if ceil32(_1312) > _1312:
                mem[_1312 + _735 + stor11.length.field_1 % 128 + _823 + 101] = 0
            return 32, mem[_735 + stor11.length.field_1 % 128 + _823 + 69 len ceil32(_1312) + 32]
        _1225 = mem[64]
        mem[64] = _735 + stor11.length.field_1 % 128 + _823 + 37
        mem[_735 + stor11.length.field_1 % 128 + _823 + 37] = 32
        _1313 = mem[_1225]
        mem[_735 + stor11.length.field_1 % 128 + _823 + 69] = mem[_1225]
        mem[_735 + stor11.length.field_1 % 128 + _823 + 101 len ceil32(_1313)] = mem[_1225 + 32 len ceil32(_1313)]
        if ceil32(_1313) > _1313:
            mem[_1313 + _735 + stor11.length.field_1 % 128 + _823 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 % 128 + _823 + 69 len ceil32(_1313) + 32]
    if bool(stor11.length) != 1:
        _827 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_827] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
        if ceil32(_827) <= _827:
            _1226 = mem[64]
            mem[64] = _827 + 5
            mem[_827 + 5] = 32
            _1314 = mem[_1226]
            mem[_827 + 37] = mem[_1226]
            mem[_827 + 69 len ceil32(_1314)] = mem[_1226 + 32 len ceil32(_1314)]
            if ceil32(_1314) > _1314:
                mem[_1314 + _827 + 69] = 0
            return 32, mem[_827 + 37 len ceil32(_1314) + 32]
        _1227 = mem[64]
        mem[64] = _827 + 5
        mem[_827 + 5] = 32
        _1315 = mem[_1227]
        mem[_827 + 37] = mem[_1227]
        mem[_827 + 69 len ceil32(_1315)] = mem[_1227 + 32 len ceil32(_1315)]
        if ceil32(_1315) > _1315:
            mem[_1315 + _827 + 69] = 0
        return 32, mem[_827 + 37 len ceil32(_1315) + 32]
    mem[0] = 11
    idx = 0
    s = 0
    while idx < stor11.length.field_1 % 128:
        mem[idx + _735 + 32] = stor11[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _1195 = mem[96]
    mem[_735 + stor11.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 32] = 0x2e6a736f6e000000000000000000000000000000000000000000000000000000
    if ceil32(_1195) <= _1195:
        _1562 = mem[64]
        mem[64] = _735 + stor11.length.field_1 % 128 + _1195 + 37
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 37] = 32
        _1658 = mem[_1562]
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 69] = mem[_1562]
        mem[_735 + stor11.length.field_1 % 128 + _1195 + 101 len ceil32(_1658)] = mem[_1562 + 32 len ceil32(_1658)]
        if ceil32(_1658) > _1658:
            mem[_1658 + _735 + stor11.length.field_1 % 128 + _1195 + 101] = 0
        return 32, mem[_735 + stor11.length.field_1 % 128 + _1195 + 69 len ceil32(_1658) + 32]
    _1563 = mem[64]
    mem[64] = _735 + stor11.length.field_1 % 128 + _1195 + 37
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 37] = 32
    _1659 = mem[_1563]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 69] = mem[_1563]
    mem[_735 + stor11.length.field_1 % 128 + _1195 + 101 len ceil32(_1659)] = mem[_1563 + 32 len ceil32(_1659)]
    if ceil32(_1659) > _1659:
        mem[_1659 + _735 + stor11.length.field_1 % 128 + _1195 + 101] = 0
    return 32, mem[_735 + stor11.length.field_1 % 128 + _1195 + 69 len ceil32(_1659) + 32]
}



}
