contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
const sub_559c6466(?) = 3


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
array of struct stor11;
uint256 stor12;
uint256 stor13;
uint256 mintPrice;
array of struct stor15;
mapping of uint256 sub_24014f2d;
uint256 stor17;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_24014f2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_24014f2d[arg1]
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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

function owner() {
    return owner
}

function sub_8ee74912(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = arg1
}

function setMintPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintPrice = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
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
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor11[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor11.length = 0
            idx = 0
            while uint255(stor11.length.field_1) + 31 / 32 > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
    require arg3 == arg3
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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
        if bool(stor9[cd[4] << 240].field_0) == uint255(stor9[cd[4] << 240].field_1) < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor9[cd[4] << 240].field_0 = 0
            idx = 0
            while uint255(stor9[cd[4] << 240].field_1) + 31 / 32 > idx:
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
            while uint255(stor9[cd[4] << 240].field_1) + 31 / 32 > idx:
                stor9[cd[4] << 240][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
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

function team(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1:
        if stor12 == -1:
            revert with 'NH{q', 17
        stor12++
        _41 = mem[64]
        mem[64] = mem[64] + 32
        mem[_41] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor12 + 1
        mem[32] = 3
        ownerOf[stor12 + 1] = msg.sender
        emit Transfer(0, msg.sender, stor12 + 1);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor12 + 1
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_41 + s + 32]
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
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_82] == Mask(32, 224, mem[_82])
            if Mask(32, 224, mem[_82]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
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
        revert with 'NH{q', 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
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
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[arg2.length + 128] = 0
    require arg3 == uint64(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg4.length)) + 98 > test266151307() or ceil32(ceil32(arg4.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len arg4.length] = arg4[all]
    mem[ceil32(ceil32(arg2.length)) + arg4.length + 129] = 0
    if this.address != msg.sender:
        revert with 0, 'NonblockingReceiver: caller must be Bridge.'
    require arg4.length >= 64
    require mem[ceil32(ceil32(arg2.length)) + 129] == mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    require mem[ceil32(ceil32(arg2.length)) + 161] == mem[ceil32(ceil32(arg2.length)) + 161]
    if not mem[ceil32(ceil32(arg2.length)) + 141 len 20]:
        revert with 0, 'ERC721: mint to the zero address'
    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
        revert with 'NH{q', 17
    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
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
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor1.length.field_1):
                if 31 < uint255(stor1.length.field_1):
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor1.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        else:
            if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
        mem[ceil32(uint255(stor1.length.field_1)) + 192 len ceil32(uint255(stor1.length.field_1))] = mem[128 len ceil32(uint255(stor1.length.field_1))]
        if ceil32(uint255(stor1.length.field_1)) > uint255(stor1.length.field_1):
            mem[ceil32(uint255(stor1.length.field_1)) + uint255(stor1.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor1.length.field_1)), data=mem[128 len ceil32(uint255(stor1.length.field_1))], mem[(2 * ceil32(uint255(stor1.length.field_1))) + 192 len 2 * ceil32(uint255(stor1.length.field_1))]), 
    if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor1.length.field_1):
            if 31 < uint255(stor1.length.field_1):
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while uint255(stor1.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor1.length.field_8)
    else:
        if bool(stor1.length) == stor1.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor1.length.field_1 % 128) + stor1.length.field_1 % 128 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1 % 128)], mem[(2 * ceil32(stor1.length.field_1 % 128)) + 192 len 2 * ceil32(stor1.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor2.length.field_1):
                if 31 < uint255(stor2.length.field_1):
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor2.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        else:
            if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
        mem[ceil32(uint255(stor2.length.field_1)) + 192 len ceil32(uint255(stor2.length.field_1))] = mem[128 len ceil32(uint255(stor2.length.field_1))]
        if ceil32(uint255(stor2.length.field_1)) > uint255(stor2.length.field_1):
            mem[ceil32(uint255(stor2.length.field_1)) + uint255(stor2.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor2.length.field_1)), data=mem[128 len ceil32(uint255(stor2.length.field_1))], mem[(2 * ceil32(uint255(stor2.length.field_1))) + 192 len 2 * ceil32(uint255(stor2.length.field_1))]), 
    if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor2.length.field_1):
            if 31 < uint255(stor2.length.field_1):
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while uint255(stor2.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor2.length.field_8)
    else:
        if bool(stor2.length) == stor2.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor2.length.field_1 % 128) + stor2.length.field_1 % 128 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1 % 128)], mem[(2 * ceil32(stor2.length.field_1 % 128)) + 192 len 2 * ceil32(stor2.length.field_1 % 128)]), 
}

function baseExtension() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor15.length.field_1):
                if 31 < uint255(stor15.length.field_1):
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor15.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor15.length.field_1 % 128:
                if 31 < stor15.length.field_1 % 128:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length.field_1)) + 192 len ceil32(uint255(stor15.length.field_1))] = mem[128 len ceil32(uint255(stor15.length.field_1))]
        if ceil32(uint255(stor15.length.field_1)) > uint255(stor15.length.field_1):
            mem[ceil32(uint255(stor15.length.field_1)) + uint255(stor15.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor15.length.field_1)), data=mem[128 len ceil32(uint255(stor15.length.field_1))], mem[(2 * ceil32(uint255(stor15.length.field_1))) + 192 len 2 * ceil32(uint255(stor15.length.field_1))]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor15.length.field_1):
            if 31 < uint255(stor15.length.field_1):
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while uint255(stor15.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor15.length.field_1 % 128:
            if 31 < stor15.length.field_1 % 128:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    mem[ceil32(stor15.length.field_1 % 128) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) > stor15.length.field_1 % 128:
        mem[ceil32(stor15.length.field_1 % 128) + stor15.length.field_1 % 128 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function sub_7533d788(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor9[arg1].field_0):
            if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor9[arg1].field_1):
                if 31 < uint255(stor9[arg1].field_1):
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor9[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        else:
            if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        mem[ceil32(uint255(stor9[arg1].field_1)) + 192 len ceil32(uint255(stor9[arg1].field_1))] = mem[128 len ceil32(uint255(stor9[arg1].field_1))]
        if ceil32(uint255(stor9[arg1].field_1)) > uint255(stor9[arg1].field_1):
            mem[ceil32(uint255(stor9[arg1].field_1)) + uint255(stor9[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor9[arg1].field_1)), data=mem[128 len ceil32(uint255(stor9[arg1].field_1))], mem[(2 * ceil32(uint255(stor9[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor9[arg1].field_1))]), 
    if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(stor9[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor9[arg1].field_1):
            if 31 < uint255(stor9[arg1].field_1):
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor9[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
    else:
        if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor9[arg1].field_1 % 128) + stor9[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor9[arg1].field_0 % 128, data=mem[128 len ceil32(stor9[arg1].field_1 % 128)], mem[(2 * ceil32(stor9[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor9[arg1].field_1 % 128)]), 
}

function sub_d1deba1f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
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
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = sha3(arg1 << 240, 8)
    if ceil32(arg2.length) <= arg2.length:
        _42 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[ceil32(ceil32(arg2.length)) + arg4.length + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_42][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0 = 0
    else:
        _46 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0:
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192]:
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[ceil32(ceil32(arg2.length)) + arg4.length + 97] = 0
        if sha3(arg4[all]) != stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_46'))].field_0:
            revert with 0, 'LayerZero: invalid payload'
        stor[_46][arg3 << 192] = 0
        stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_46'))].field_0 = 0
    if ceil32(arg2.length) <= arg2.length:
        mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 293 len arg4.length] = arg4[all]
        mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293] = 0
        require ext_code.size(this.address)
        call this.address.0x1c37a822 with:
             gas gas_remaining wei
            args arg1 << 240, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256, arg4.length, arg4[all], mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293 len ceil32(arg4.length) - arg4.length]), arg3 << 192, ceil32(arg2.length) + 160
    else:
        mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 261] = arg4.length
        mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + 293 len arg4.length] = arg4[all]
        mem[ceil32(ceil32(arg2.length)) + ceil32(arg2.length) + arg4.length + 293] = 0
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
    mem[0] = msg.sender
    mem[32] = 16
    if sub_24014f2d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_24014f2d[address(msg.sender)] + arg1 > 3:
        revert with 0, '3 omni bears max per wallet'
    if stor12 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor12 + arg1 > stor13:
        revert with 0, 'Mint exceeds supply'
    if stor12 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor12 + arg1 <= 2900:
        idx = 0
        while idx < arg1:
            if stor12 == -1:
                revert with 'NH{q', 17
            stor12++
            _86 = mem[64]
            mem[64] = mem[64] + 32
            mem[_86] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12 + 1
            mem[32] = 3
            ownerOf[stor12 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor12 + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_86 + s + 32]
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
                _170 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_170] == Mask(32, 224, mem[_170])
                if Mask(32, 224, mem[_170]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if mintPrice and arg1 > -1 / mintPrice:
            revert with 'NH{q', 17
        if mintPrice * arg1 > msg.value:
            revert with 0, 'Incorrect value sent'
        idx = 0
        while idx < arg1:
            if stor12 == -1:
                revert with 'NH{q', 17
            stor12++
            _87 = mem[64]
            mem[64] = mem[64] + 32
            mem[_87] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = stor12 + 1
            mem[32] = 3
            ownerOf[stor12 + 1] = msg.sender
            emit Transfer(0, msg.sender, stor12 + 1);
            if ext_code.size(msg.sender) > 0:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = stor12 + 1
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_87 + s + 32]
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
                _171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_171] == Mask(32, 224, mem[_171])
                if Mask(32, 224, mem[_171]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if sub_24014f2d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_24014f2d[address(msg.sender)] += arg1
}

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must own the token to traverse'
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor9[arg1 << 240].field_1) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor9[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor3[arg2]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor3[arg2]]--
    ownerOf[arg2] = 0
    emit Transfer(ownerOf[arg2], 0, arg2);
    mem[224] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[226] = stor17
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor17, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor17, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'msg.value not enough to cover messageFee. Send gas for message fees'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_1) < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = uint255(stor9[arg1 << 240].field_1)
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(stor7)
            call stor7.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor17, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor9[arg1 << 240].field_1):
                    mem[ceil32(return_data.size) + idx + 486] = stor9[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(stor9[arg1 << 240].field_1)) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_1)) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_1)) + 320, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_1)) + 32], msg.sender, arg2, 34, stor17, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor17, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor7)
                call stor7.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = stor9[arg1 << 240].field_1 % 128
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(stor7)
            call stor7.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor17, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor9[arg1 << 240].field_1 % 128:
                    mem[ceil32(return_data.size) + idx + 486] = stor9[arg1 << 240][s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor9[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor9[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[arg1 << 240].field_1 % 128) + 320, stor9[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor9[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor17, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor17, ext_call.return_data[0 len 30]
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
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 3
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[96] = stor11.length.field_1 % 128
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor11.length.field_1):
                if stor11.length.field_1 % 128 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                    mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _7178 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                    if ceil32(_7178) > _7178:
                                        mem[_7178 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7178) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7264 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7264) > _7264:
                                    mem[_7264 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7264) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _7183 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                    if ceil32(_7183) > _7183:
                                        mem[_7183 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7183) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7267 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7267) > _7267:
                                    mem[_7267 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7267) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18806 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18806) > _18806:
                                            mem[_18806 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18806) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _18999 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_18999) > _18999:
                                        mem[_18999 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18999) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19000 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19000) > _19000:
                                            mem[_19000 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19000) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19144 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19144) > _19144:
                                        mem[_19144 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19144) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18811 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18811) > _18811:
                                            mem[_18811 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18811) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19004 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19004) > _19004:
                                        mem[_19004 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19004) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19005 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19005) > _19005:
                                            mem[_19005 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19005) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19147 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19147) > _19147:
                                        mem[_19147 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19147) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18816 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18816) > _18816:
                                            mem[_18816 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18816) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19009 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19009) > _19009:
                                        mem[_19009 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19009) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19010 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19010) > _19010:
                                            mem[_19010 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19010) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19150 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19150) > _19150:
                                        mem[_19150 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19150) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18821 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18821) > _18821:
                                            mem[_18821 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18821) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19014 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19014) > _19014:
                                        mem[_19014 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19014) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19015 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19015) > _19015:
                                            mem[_19015 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19015) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19153 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19153) > _19153:
                                        mem[_19153 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19153) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
            if 31 >= uint255(stor11.length.field_1):
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
                if stor11.length.field_1 % 128 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                    mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _7192 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                    if ceil32(_7192) > _7192:
                                        mem[_7192 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7192) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7273 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7273) > _7273:
                                    mem[_7273 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7273) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _7197 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                    if ceil32(_7197) > _7197:
                                        mem[_7197 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_7197) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7276 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7276) > _7276:
                                    mem[_7276 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7276) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18834 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18834) > _18834:
                                            mem[_18834 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18834) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19027 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19027) > _19027:
                                        mem[_19027 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19027) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19028 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19028) > _19028:
                                            mem[_19028 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19028) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19156 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19156) > _19156:
                                        mem[_19156 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19156) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18839 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18839) > _18839:
                                            mem[_18839 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18839) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19032 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19032) > _19032:
                                        mem[_19032 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19032) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19033 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19033) > _19033:
                                            mem[_19033 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19033) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19159 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19159) > _19159:
                                        mem[_19159 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19159) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18844 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18844) > _18844:
                                            mem[_18844 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18844) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19037 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19037) > _19037:
                                        mem[_19037 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19037) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19038 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19038) > _19038:
                                            mem[_19038 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19038) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19162 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19162) > _19162:
                                        mem[_19162 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19162) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _18849 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_18849) > _18849:
                                            mem[_18849 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_18849) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19042 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19042) > _19042:
                                        mem[_19042 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19042) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _19043 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_19043) > _19043:
                                            mem[_19043 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_19043) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19165 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19165) > _19165:
                                        mem[_19165 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19165) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            else:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while uint255(stor11.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor11.length.field_1 % 128 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                    mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                var87001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                            if bool(stor15.length) == 1:
                                idx = 0
                                s = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                            mem[64] = 0
                            _13362 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            var88001 = ceil32(_13362)
                            if ceil32(_13362) > _13362:
                                mem[_13362 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13362) + -mem[64] + 64
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            var88001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == 1:
                            idx = 0
                            s = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        mem[64] = 0
                        _13426 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(_13426)
                        if ceil32(_13426) > _13426:
                            mem[_13426 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13426) + -mem[64] + 64
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            var88001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == 1:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        mem[64] = 0
                        _13367 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(_13367)
                        if ceil32(_13367) > _13367:
                            mem[_13367 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13367) + -mem[64] + 64
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                    else:
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _13429 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(_13429) > _13429:
                                mem[_13429 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_13429) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                s = 0
                idx = arg1
                while idx:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    idx = idx / 10
                    continue 
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(stor11.length.field_1 % 128) + 128] = s
                if not s:
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23582 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23582) > _23582:
                                            mem[_23582 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23582) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23791 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23791) > _23791:
                                        mem[_23791 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23791) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23792 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23792) > _23792:
                                            mem[_23792 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23792) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23904 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23904) > _23904:
                                        mem[_23904 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23904) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23587 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23587) > _23587:
                                            mem[_23587 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23587) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23796 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23796) > _23796:
                                        mem[_23796 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23796) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23797 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23797) > _23797:
                                            mem[_23797 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23797) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23907 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23907) > _23907:
                                        mem[_23907 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23907) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                    t = s
                    idx = arg1
                    while idx:
                        if t < 1:
                            revert with 'NH{q', 17
                        if 48 > -(idx % 10) - 1:
                            revert with 'NH{q', 17
                        if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            revert with 'NH{q', 50
                        mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                        t = t - 1
                        idx = idx / 10
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                    if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23592 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23592) > _23592:
                                            mem[_23592 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23592) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23801 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23801) > _23801:
                                        mem[_23801 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23801) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23802 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23802) > _23802:
                                            mem[_23802 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23802) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23910 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23910) > _23910:
                                        mem[_23910 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23910) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23597 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23597) > _23597:
                                            mem[_23597 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23597) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23806 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23806) > _23806:
                                        mem[_23806 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23806) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                        else:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                            if bool(stor15.length):
                                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                    revert with 'NH{q', 34
                                if not bool(stor15.length):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                else:
                                    if bool(stor15.length) != 1:
                                        mem[64] = 0
                                        _23807 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                        if ceil32(_23807) > _23807:
                                            mem[_23807 + 64] = 0
                                        return memory
                                          from mem[64]
                                           len ceil32(_23807) + -mem[64] + 64
                                    idx = 0
                                    t = 0
                                    while idx < uint255(stor15.length.field_1):
                                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                        idx = idx + 32
                                        t = t + 1
                                        continue 
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23913 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23913) > _23913:
                                        mem[_23913 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23913) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < stor15.length.field_1 % 128:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
            return 32, mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor11.length.field_1 % 128:
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7204 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7204) > _7204:
                                    mem[_7204 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7204) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                    else:
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7281 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(_7281) > _7281:
                                mem[_7281 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7281) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7209 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7209) > _7209:
                                    mem[_7209 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7209) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                    else:
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7284 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(_7284) > _7284:
                                mem[_7284 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7284) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    _12536 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _18854 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_18854) > _18854:
                                    mem[_18854 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18854) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _19047 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_19047) > _19047:
                                mem[_19047 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19047) + -mem[64] + 64
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19048 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19048) > _19048:
                                    mem[_19048 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19048) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _19168 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_19168) > _19168:
                                mem[_19168 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19168) + -mem[64] + 64
                    ('eq', ('type', 1, ('stor', ('length', ('name', 'stor15', 15)))), 1)
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + stor15.length.field_1 % 128 + 192] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12536 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                _12666 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18859 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_18859) > _18859:
                                mem[_18859 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18859) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19052 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_19052) > _19052:
                            mem[_19052 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19052) + -mem[64] + 64
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _19053 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_19053) > _19053:
                                mem[_19053 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19053) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19171 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_19171) > _19171:
                            mem[_19171 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19171) + -mem[64] + 64
                ('eq', ('type', 1, ('stor', ('length', ('name', 'stor15', 15)))), 1)
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + 192] = 32
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                return 32, mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12666 + stor15.length.field_1 % 128 + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
            mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
            if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                _12537 = mem[ceil32(stor11.length.field_1 % 128) + 128]
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18864 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_18864) > _18864:
                                mem[_18864 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18864) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19057 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_19057) > _19057:
                            mem[_19057 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19057) + -mem[64] + 64
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _19058 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(_19058) > _19058:
                                mem[_19058 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_19058) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19174 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_19174) > _19174:
                            mem[_19174 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19174) + -mem[64] + 64
                ('eq', ('type', 1, ('stor', ('length', ('name', 'stor15', 15)))), 1)
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + stor15.length.field_1 % 128 + 192] = 32
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12537 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
            _12667 = mem[ceil32(stor11.length.field_1 % 128) + 128]
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18869 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_18869) > _18869:
                            mem[_18869 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18869) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 192] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19062 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(_19062) > _19062:
                        mem[_19062 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19062) + -mem[64] + 64
            else:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19063 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                        if ceil32(_19063) > _19063:
                            mem[_19063 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19063) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 192] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                    return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19177 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                    if ceil32(_19177) > _19177:
                        mem[_19177 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19177) + -mem[64] + 64
            ('eq', ('type', 1, ('stor', ('length', ('name', 'stor15', 15)))), 1)
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + stor15.length.field_1 % 128 + 192] = 32
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + _12667 + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
        if 31 >= stor11.length.field_1 % 128:
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7218 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7218) > _7218:
                                    mem[_7218 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7218) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                    else:
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7290 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(_7290) > _7290:
                                mem[_7290 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7290) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _7223 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                                if ceil32(_7223) > _7223:
                                    mem[_7223 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_7223) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                    else:
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7293 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(_7293) > _7293:
                                mem[_7293 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7293) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _18882 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_18882) > _18882:
                                        mem[_18882 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18882) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19075 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19075) > _19075:
                                    mem[_19075 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19075) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19076 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19076) > _19076:
                                        mem[_19076 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19076) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19180 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19180) > _19180:
                                    mem[_19180 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19180) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _18887 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_18887) > _18887:
                                        mem[_18887 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18887) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19080 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19080) > _19080:
                                    mem[_19080 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19080) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19081 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19081) > _19081:
                                        mem[_19081 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19081) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19183 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19183) > _19183:
                                    mem[_19183 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19183) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _18892 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_18892) > _18892:
                                        mem[_18892 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18892) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19085 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19085) > _19085:
                                    mem[_19085 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19085) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19086 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19086) > _19086:
                                        mem[_19086 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19086) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19186 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19186) > _19186:
                                    mem[_19186 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19186) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _18897 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_18897) > _18897:
                                        mem[_18897 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_18897) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19090 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19090) > _19090:
                                    mem[_19090 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19090) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _19091 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_19091) > _19091:
                                        mem[_19091 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_19091) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _19189 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_19189) > _19189:
                                    mem[_19189 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_19189) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        else:
            mem[128] = uint256(stor11.field_0)
            idx = 128
            s = 0
            while stor11.length.field_1 % 128 + 96 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor11.length.field_1 % 128 <= 0:
                return ''
            if not arg1:
                mem[ceil32(stor11.length.field_1 % 128) + 128] = 1
                mem[ceil32(stor11.length.field_1 % 128) + 160] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 224] = '0'
                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = 0
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            var88001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        if bool(stor15.length) == 1:
                            idx = 0
                            s = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                                mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                        mem[64] = 0
                        _13390 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(_13390)
                        if ceil32(_13390) > _13390:
                            mem[_13390 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13390) + -mem[64] + 64
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == 1:
                        idx = 0
                        s = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    mem[64] = 0
                    _13434 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    var90001 = ceil32(_13434)
                    if ceil32(_13434) > _13434:
                        mem[_13434 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13434) + -mem[64] + 64
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        var89001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    if bool(stor15.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                            mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
                    mem[64] = 0
                    _13395 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    var90001 = ceil32(_13395)
                    if ceil32(_13395) > _13395:
                        mem[_13395 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13395) + -mem[64] + 64
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                    var90001 = ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])
                else:
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _13437 = mem[ceil32(stor11.length.field_1 % 128) + 192]
                        mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                        if ceil32(_13437) > _13437:
                            mem[_13437 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_13437) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + idx + 225] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 257] = mem[ceil32(stor11.length.field_1 % 128) + 192]
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])] = mem[ceil32(stor11.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]
                if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192]) > mem[ceil32(stor11.length.field_1 % 128) + 192]:
                    mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 192] + 289] = 0
                return Array(len=mem[ceil32(stor11.length.field_1 % 128) + 192], data=mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 192])]), 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(stor11.length.field_1 % 128) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23634 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23634) > _23634:
                                        mem[_23634 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23634) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23843 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23843) > _23843:
                                    mem[_23843 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23843) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23844 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23844) > _23844:
                                        mem[_23844 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23844) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23916 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23916) > _23916:
                                    mem[_23916 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23916) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23639 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23639) > _23639:
                                        mem[_23639 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23639) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23848 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23848) > _23848:
                                    mem[_23848 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23848) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23849 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23849) > _23849:
                                        mem[_23849 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23849) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23919 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23919) > _23919:
                                    mem[_23919 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23919) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
            else:
                mem[ceil32(stor11.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(stor11.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
                if ceil32(stor11.length.field_1 % 128) <= stor11.length.field_1 % 128:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23644 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23644) > _23644:
                                        mem[_23644 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23644) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23853 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23853) > _23853:
                                    mem[_23853 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23853) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23854 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23854) > _23854:
                                        mem[_23854 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23854) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23922 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23922) > _23922:
                                    mem[_23922 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23922) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                else:
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192] = 0
                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])] = mem[ceil32(stor11.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128])]
                    if ceil32(mem[ceil32(stor11.length.field_1 % 128) + 128]) <= mem[ceil32(stor11.length.field_1 % 128) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23649 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23649) > _23649:
                                        mem[_23649 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23649) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23858 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23858) > _23858:
                                    mem[_23858 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23858) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                    else:
                        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = 0
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                            else:
                                if bool(stor15.length) != 1:
                                    mem[64] = 0
                                    _23859 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                    mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                    if ceil32(_23859) > _23859:
                                        mem[_23859 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_23859) + -mem[64] + 64
                                idx = 0
                                t = 0
                                while idx < uint255(stor15.length.field_1):
                                    mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                            if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
                            return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + 192] = Mask(248, 8, stor15.length)
                        else:
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _23925 = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
                                if ceil32(_23925) > _23925:
                                    mem[_23925 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_23925) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < stor15.length.field_1 % 128:
                                mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 192] = 32
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160]:
            mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
        return Array(len=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + stor11.length.field_1 % 128 + mem[ceil32(stor11.length.field_1 % 128) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor11.length.field_1 % 128) + ceil32(s) + 160])]), 
    if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
        revert with 'NH{q', 34
    mem[96] = uint255(stor11.length.field_1)
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor11.length.field_1):
            if uint255(stor11.length.field_1) <= 0:
                return ''
            if not arg1:
                mem[64] = ceil32(uint255(stor11.length.field_1)) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
                mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
                if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7126 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                            if ceil32(_7126) > _7126:
                                mem[_7126 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7126) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        s = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _12408 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        _12832 = mem[_12408]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12408]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12832)] = mem[_12408 + 32 len ceil32(_12832)]
                        if ceil32(_12832) > _12832:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12832 + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12832) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7230 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7230) > _7230:
                            mem[_7230 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7230) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12409 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    _12833 = mem[_12409]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12409]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12833)] = mem[_12409 + 32 len ceil32(_12833)]
                    if ceil32(_12833) > _12833:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12833 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12833) + 32], 
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7131 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7131) > _7131:
                            mem[_7131 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7131) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12412 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    _12836 = mem[_12412]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12412]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12836)] = mem[_12412 + 32 len ceil32(_12836)]
                    if ceil32(_12836) > _12836:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12836 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12836) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7233 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7233) > _7233:
                        mem[_7233 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7233) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12413 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                _12837 = mem[_12413]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12413]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12837)] = mem[_12413 + 32 len ceil32(_12837)]
                if ceil32(_12837) > _12837:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12837 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12837) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
                if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                    _12470 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                _18614 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18614)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18614)]
                                if ceil32(_18614) > _18614:
                                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18614 + 256] = 0
                                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18614) + 32], 
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _18710 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                                if ceil32(_18710) > _18710:
                                    mem[_18710 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18710) + -mem[64] + 64
                            mem[0] = 15
                            idx = 0
                            t = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            _22022 = mem[64]
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 192] = 32
                            _22854 = mem[_22022]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 224] = mem[_22022]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 256 len ceil32(_22854)] = mem[_22022 + 32 len ceil32(_22854)]
                            if ceil32(_22854) > _22854:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + _22854 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 224 len ceil32(_22854) + 32], 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                            _18711 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18711)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18711)]
                            if ceil32(_18711) > _18711:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18711 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18711) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18903 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18903) > _18903:
                                mem[_18903 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18903) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22023 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 192] = 32
                        _22855 = mem[_22023]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 224] = mem[_22023]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 256 len ceil32(_22855)] = mem[_22023 + 32 len ceil32(_22855)]
                        if ceil32(_22855) > _22855:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + _22855 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 224 len ceil32(_22855) + 32], 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18713 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18713)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18713)]
                            if ceil32(_18713) > _18713:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18713 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18713) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18904 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18904) > _18904:
                                mem[_18904 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18904) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22024 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 192] = 32
                        _22856 = mem[_22024]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 224] = mem[_22024]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 256 len ceil32(_22856)] = mem[_22024 + 32 len ceil32(_22856)]
                        if ceil32(_22856) > _22856:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + _22856 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + uint255(stor15.length.field_1) + 224 len ceil32(_22856) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18905 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18905)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18905)]
                        if ceil32(_18905) > _18905:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18905 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18905) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19096 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_19096) > _19096:
                            mem[_19096 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19096) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22025 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 192] = 32
                    _22857 = mem[_22025]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 224] = mem[_22025]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 256 len ceil32(_22857)] = mem[_22025 + 32 len ceil32(_22857)]
                    if ceil32(_22857) > _22857:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + _22857 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12470 + stor15.length.field_1 % 128 + 224 len ceil32(_22857) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
                _12558 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18617 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18617)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18617)]
                            if ceil32(_18617) > _18617:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18617 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18617) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18715 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18715) > _18715:
                                mem[_18715 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18715) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22026 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 192] = 32
                        _22858 = mem[_22026]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 224] = mem[_22026]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 256 len ceil32(_22858)] = mem[_22026 + 32 len ceil32(_22858)]
                        if ceil32(_22858) > _22858:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + _22858 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 224 len ceil32(_22858) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18716 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18716)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18716)]
                        if ceil32(_18716) > _18716:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18716 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18716) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18908 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18908) > _18908:
                            mem[_18908 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18908) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22027 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 192] = 32
                    _22859 = mem[_22027]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 224] = mem[_22027]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 256 len ceil32(_22859)] = mem[_22027 + 32 len ceil32(_22859)]
                    if ceil32(_22859) > _22859:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + _22859 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 224 len ceil32(_22859) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18718 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18718)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18718)]
                        if ceil32(_18718) > _18718:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18718 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18718) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18909 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18909) > _18909:
                            mem[_18909 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18909) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22028 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 192] = 32
                    _22860 = mem[_22028]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 224] = mem[_22028]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 256 len ceil32(_22860)] = mem[_22028 + 32 len ceil32(_22860)]
                    if ceil32(_22860) > _22860:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + _22860 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + uint255(stor15.length.field_1) + 224 len ceil32(_22860) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18910 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18910)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18910)]
                    if ceil32(_18910) > _18910:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18910 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18910) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19099 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19099) > _19099:
                        mem[_19099 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19099) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22029 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 192] = 32
                _22861 = mem[_22029]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 224] = mem[_22029]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 256 len ceil32(_22861)] = mem[_22029 + 32 len ceil32(_22861)]
                if ceil32(_22861) > _22861:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + _22861 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12558 + stor15.length.field_1 % 128 + 224 len ceil32(_22861) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                _12471 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18620 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18620)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18620)]
                            if ceil32(_18620) > _18620:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18620 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18620) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18720 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18720) > _18720:
                                mem[_18720 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18720) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22030 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 192] = 32
                        _22862 = mem[_22030]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 224] = mem[_22030]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 256 len ceil32(_22862)] = mem[_22030 + 32 len ceil32(_22862)]
                        if ceil32(_22862) > _22862:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + _22862 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 224 len ceil32(_22862) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18721 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18721)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18721)]
                        if ceil32(_18721) > _18721:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18721 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18721) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18913 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18913) > _18913:
                            mem[_18913 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18913) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22031 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 192] = 32
                    _22863 = mem[_22031]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 224] = mem[_22031]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 256 len ceil32(_22863)] = mem[_22031 + 32 len ceil32(_22863)]
                    if ceil32(_22863) > _22863:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + _22863 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 224 len ceil32(_22863) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18723 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18723)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18723)]
                        if ceil32(_18723) > _18723:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18723 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18723) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18914 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18914) > _18914:
                            mem[_18914 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18914) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22032 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 192] = 32
                    _22864 = mem[_22032]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 224] = mem[_22032]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 256 len ceil32(_22864)] = mem[_22032 + 32 len ceil32(_22864)]
                    if ceil32(_22864) > _22864:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + _22864 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + uint255(stor15.length.field_1) + 224 len ceil32(_22864) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18915 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18915)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18915)]
                    if ceil32(_18915) > _18915:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18915 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18915) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19102 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19102) > _19102:
                        mem[_19102 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19102) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22033 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 192] = 32
                _22865 = mem[_22033]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 224] = mem[_22033]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 256 len ceil32(_22865)] = mem[_22033 + 32 len ceil32(_22865)]
                if ceil32(_22865) > _22865:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + _22865 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12471 + stor15.length.field_1 % 128 + 224 len ceil32(_22865) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
            _12559 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18623 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18623)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18623)]
                        if ceil32(_18623) > _18623:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18623 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18623) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18725 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18725) > _18725:
                            mem[_18725 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18725) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22034 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 192] = 32
                    _22866 = mem[_22034]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 224] = mem[_22034]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 256 len ceil32(_22866)] = mem[_22034 + 32 len ceil32(_22866)]
                    if ceil32(_22866) > _22866:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + _22866 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 224 len ceil32(_22866) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18726 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18726)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18726)]
                    if ceil32(_18726) > _18726:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18726 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18726) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18918 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18918) > _18918:
                        mem[_18918 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18918) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22035 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 192] = 32
                _22867 = mem[_22035]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 224] = mem[_22035]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 256 len ceil32(_22867)] = mem[_22035 + 32 len ceil32(_22867)]
                if ceil32(_22867) > _22867:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + _22867 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 224 len ceil32(_22867) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18728 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18728)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18728)]
                    if ceil32(_18728) > _18728:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18728 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18728) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18919 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18919) > _18919:
                        mem[_18919 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18919) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22036 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 192] = 32
                _22868 = mem[_22036]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 224] = mem[_22036]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 256 len ceil32(_22868)] = mem[_22036 + 32 len ceil32(_22868)]
                if ceil32(_22868) > _22868:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + _22868 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + uint255(stor15.length.field_1) + 224 len ceil32(_22868) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18920 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18920)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18920)]
                if ceil32(_18920) > _18920:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18920 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18920) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19105 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19105) > _19105:
                    mem[_19105 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19105) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22037 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 192] = 32
            _22869 = mem[_22037]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 224] = mem[_22037]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 256 len ceil32(_22869)] = mem[_22037 + 32 len ceil32(_22869)]
            if ceil32(_22869) > _22869:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + _22869 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12559 + stor15.length.field_1 % 128 + 224 len ceil32(_22869) + 32], 
        if 31 >= uint255(stor11.length.field_1):
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
            if uint255(stor11.length.field_1) <= 0:
                return ''
            if not arg1:
                mem[64] = ceil32(uint255(stor11.length.field_1)) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
                mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
                mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
                if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _7140 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                            if ceil32(_7140) > _7140:
                                mem[_7140 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_7140) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        s = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        _12416 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        _12840 = mem[_12416]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12416]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12840)] = mem[_12416 + 32 len ceil32(_12840)]
                        if ceil32(_12840) > _12840:
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12840 + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12840) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7239 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7239) > _7239:
                            mem[_7239 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7239) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12417 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    _12841 = mem[_12417]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12417]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12841)] = mem[_12417 + 32 len ceil32(_12841)]
                    if ceil32(_12841) > _12841:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12841 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12841) + 32], 
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7145 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7145) > _7145:
                            mem[_7145 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7145) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12420 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    _12844 = mem[_12420]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12420]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12844)] = mem[_12420 + 32 len ceil32(_12844)]
                    if ceil32(_12844) > _12844:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12844 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12844) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7242 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7242) > _7242:
                        mem[_7242 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7242) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12421 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                _12845 = mem[_12421]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12421]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12845)] = mem[_12421 + 32 len ceil32(_12845)]
                if ceil32(_12845) > _12845:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12845 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12845) + 32], 
            s = 0
            idx = arg1
            while idx:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
                if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                        if bool(stor15.length):
                            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                                revert with 'NH{q', 34
                            if not bool(stor15.length):
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                                _18626 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18626)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18626)]
                                if ceil32(_18626) > _18626:
                                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18626 + 256] = 0
                                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18626) + 32], 
                            if bool(stor15.length) != 1:
                                mem[64] = 0
                                _18738 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                                if ceil32(_18738) > _18738:
                                    mem[_18738 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_18738) + -mem[64] + 64
                            idx = 0
                            t = 0
                            while idx < uint255(stor15.length.field_1):
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                                idx = idx + 32
                                t = t + 1
                                continue 
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _22870 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22870)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22870)]
                            if ceil32(_22870) > _22870:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22870 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22870) + 32], 
                        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                            _18739 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18739)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18739)]
                            if ceil32(_18739) > _18739:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18739 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18739) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18931 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18931) > _18931:
                                mem[_18931 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18931) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < stor15.length.field_1 % 128:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _22871 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22871)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22871)]
                        if ceil32(_22871) > _22871:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22871 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22871) + 32], 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18741 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18741)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18741)]
                            if ceil32(_18741) > _18741:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18741 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18741) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18932 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18932) > _18932:
                                mem[_18932 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18932) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _22872 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22872)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22872)]
                        if ceil32(_22872) > _22872:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22872 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22872) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18933 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18933)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18933)]
                        if ceil32(_18933) > _18933:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18933 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18933) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _19108 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_19108) > _19108:
                            mem[_19108 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_19108) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _22873 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22873)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22873)]
                    if ceil32(_22873) > _22873:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22873 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22873) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18629 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18629)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18629)]
                            if ceil32(_18629) > _18629:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18629 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18629) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18743 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18743) > _18743:
                                mem[_18743 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18743) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _22874 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22874)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22874)]
                        if ceil32(_22874) > _22874:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22874 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22874) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18744 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18744)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18744)]
                        if ceil32(_18744) > _18744:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18744 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18744) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18936 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18936) > _18936:
                            mem[_18936 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18936) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _22875 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22875)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22875)]
                    if ceil32(_22875) > _22875:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22875 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22875) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18746 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18746)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18746)]
                        if ceil32(_18746) > _18746:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18746 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18746) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18937 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18937) > _18937:
                            mem[_18937 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18937) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _22876 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22876)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22876)]
                    if ceil32(_22876) > _22876:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22876 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22876) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18938 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18938)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18938)]
                    if ceil32(_18938) > _18938:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18938 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18938) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19111 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19111) > _19111:
                        mem[_19111 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19111) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _22877 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22877)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22877)]
                if ceil32(_22877) > _22877:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22877 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22877) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18632 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18632)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18632)]
                            if ceil32(_18632) > _18632:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18632 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18632) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18748 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18748) > _18748:
                                mem[_18748 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18748) + -mem[64] + 64
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _22878 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22878)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22878)]
                        if ceil32(_22878) > _22878:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22878 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22878) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18749 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18749)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18749)]
                        if ceil32(_18749) > _18749:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18749 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18749) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18941 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18941) > _18941:
                            mem[_18941 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18941) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _22879 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22879)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22879)]
                    if ceil32(_22879) > _22879:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22879 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22879) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18751 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18751)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18751)]
                        if ceil32(_18751) > _18751:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18751 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18751) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18942 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18942) > _18942:
                            mem[_18942 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18942) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _22880 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22880)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22880)]
                    if ceil32(_22880) > _22880:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22880 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22880) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18943 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18943)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18943)]
                    if ceil32(_18943) > _18943:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18943 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18943) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19114 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19114) > _19114:
                        mem[_19114 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19114) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _22881 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22881)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22881)]
                if ceil32(_22881) > _22881:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22881 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22881) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18635 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18635)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18635)]
                        if ceil32(_18635) > _18635:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18635 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18635) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18753 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18753) > _18753:
                            mem[_18753 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18753) + -mem[64] + 64
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _22882 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22882)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22882)]
                    if ceil32(_22882) > _22882:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22882 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22882) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18754 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18754)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18754)]
                    if ceil32(_18754) > _18754:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18754 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18754) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18946 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18946) > _18946:
                        mem[_18946 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18946) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _22883 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22883)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22883)]
                if ceil32(_22883) > _22883:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22883 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22883) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18756 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18756)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18756)]
                    if ceil32(_18756) > _18756:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18756 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18756) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18947 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18947) > _18947:
                        mem[_18947 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18947) + -mem[64] + 64
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _22884 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_22884)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22884)]
                if ceil32(_22884) > _22884:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _22884 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_22884) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18948 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18948)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18948)]
                if ceil32(_18948) > _18948:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18948 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18948) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19117 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19117) > _19117:
                    mem[_19117 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19117) + -mem[64] + 64
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _22885 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_22885)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_22885)]
            if ceil32(_22885) > _22885:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _22885 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_22885) + 32], 
        mem[0] = 11
        mem[128] = uint256(stor11.field_0)
        idx = 128
        s = 0
        while uint255(stor11.length.field_1) + 96 > idx:
            mem[idx + 32] = stor11[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor11.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
            mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        var86001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) == 1:
                        idx = 0
                        s = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    mem[64] = 0
                    _13306 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    var87001 = ceil32(_13306)
                    if ceil32(_13306) > _13306:
                        mem[_13306 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13306) + -mem[64] + 64
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    var87001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) == 1:
                    idx = 0
                    s = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                mem[64] = 0
                _13410 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(_13410)
                if ceil32(_13410) > _13410:
                    mem[_13410 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13410) + -mem[64] + 64
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    var87001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                mem[64] = 0
                _13311 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(_13311)
                if ceil32(_13311) > _13311:
                    mem[_13311 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13311) + -mem[64] + 64
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
            else:
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _13413 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_13413) > _13413:
                        mem[_13413 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_13413) + -mem[64] + 64
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                _17622 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _23414 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23414)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23414)]
                            if ceil32(_23414) > _23414:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23414 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23414) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _23478 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_23478) > _23478:
                                mem[_23478 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_23478) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _24838 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 192] = 32
                        _25478 = mem[_24838]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 224] = mem[_24838]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 256 len ceil32(_25478)] = mem[_24838 + 32 len ceil32(_25478)]
                        if ceil32(_25478) > _25478:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + _25478 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 224 len ceil32(_25478) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _23479 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23479)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23479)]
                        if ceil32(_23479) > _23479:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23479 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23479) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _23687 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_23687) > _23687:
                            mem[_23687 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23687) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24839 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 192] = 32
                    _25479 = mem[_24839]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 224] = mem[_24839]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 256 len ceil32(_25479)] = mem[_24839 + 32 len ceil32(_25479)]
                    if ceil32(_25479) > _25479:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + _25479 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 224 len ceil32(_25479) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _23481 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23481)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23481)]
                        if ceil32(_23481) > _23481:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23481 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23481) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _23688 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_23688) > _23688:
                            mem[_23688 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23688) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24840 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 192] = 32
                    _25480 = mem[_24840]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 224] = mem[_24840]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 256 len ceil32(_25480)] = mem[_24840 + 32 len ceil32(_25480)]
                    if ceil32(_25480) > _25480:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + _25480 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + uint255(stor15.length.field_1) + 224 len ceil32(_25480) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _23689 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23689)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23689)]
                    if ceil32(_23689) > _23689:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23689 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23689) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23880 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23880) > _23880:
                        mem[_23880 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23880) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24841 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 192] = 32
                _25481 = mem[_24841]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 224] = mem[_24841]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 256 len ceil32(_25481)] = mem[_24841 + 32 len ceil32(_25481)]
                if ceil32(_25481) > _25481:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + _25481 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17622 + stor15.length.field_1 % 128 + 224 len ceil32(_25481) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
            _17670 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _23417 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23417)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23417)]
                        if ceil32(_23417) > _23417:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23417 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23417) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _23483 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_23483) > _23483:
                            mem[_23483 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23483) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24842 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 192] = 32
                    _25482 = mem[_24842]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 224] = mem[_24842]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 256 len ceil32(_25482)] = mem[_24842 + 32 len ceil32(_25482)]
                    if ceil32(_25482) > _25482:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + _25482 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 224 len ceil32(_25482) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _23484 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23484)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23484)]
                    if ceil32(_23484) > _23484:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23484 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23484) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23692 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23692) > _23692:
                        mem[_23692 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23692) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24843 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 192] = 32
                _25483 = mem[_24843]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 224] = mem[_24843]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 256 len ceil32(_25483)] = mem[_24843 + 32 len ceil32(_25483)]
                if ceil32(_25483) > _25483:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + _25483 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 224 len ceil32(_25483) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23486 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23486)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23486)]
                    if ceil32(_23486) > _23486:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23486 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23486) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23693 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23693) > _23693:
                        mem[_23693 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23693) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24844 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 192] = 32
                _25484 = mem[_24844]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 224] = mem[_24844]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 256 len ceil32(_25484)] = mem[_24844 + 32 len ceil32(_25484)]
                if ceil32(_25484) > _25484:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + _25484 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + uint255(stor15.length.field_1) + 224 len ceil32(_25484) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23694 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23694)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23694)]
                if ceil32(_23694) > _23694:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23694 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23694) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23883 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23883) > _23883:
                    mem[_23883 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23883) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24845 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 192] = 32
            _25485 = mem[_24845]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 224] = mem[_24845]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 256 len ceil32(_25485)] = mem[_24845 + 32 len ceil32(_25485)]
            if ceil32(_25485) > _25485:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + _25485 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17670 + stor15.length.field_1 % 128 + 224 len ceil32(_25485) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
            _17623 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _23420 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23420)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23420)]
                        if ceil32(_23420) > _23420:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23420 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23420) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _23488 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_23488) > _23488:
                            mem[_23488 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23488) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24846 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 192] = 32
                    _25486 = mem[_24846]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 224] = mem[_24846]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 256 len ceil32(_25486)] = mem[_24846 + 32 len ceil32(_25486)]
                    if ceil32(_25486) > _25486:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + _25486 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 224 len ceil32(_25486) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _23489 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23489)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23489)]
                    if ceil32(_23489) > _23489:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23489 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23489) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23697 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23697) > _23697:
                        mem[_23697 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23697) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24847 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 192] = 32
                _25487 = mem[_24847]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 224] = mem[_24847]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 256 len ceil32(_25487)] = mem[_24847 + 32 len ceil32(_25487)]
                if ceil32(_25487) > _25487:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + _25487 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 224 len ceil32(_25487) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23491 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23491)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23491)]
                    if ceil32(_23491) > _23491:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23491 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23491) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23698 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23698) > _23698:
                        mem[_23698 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23698) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24848 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 192] = 32
                _25488 = mem[_24848]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 224] = mem[_24848]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 256 len ceil32(_25488)] = mem[_24848 + 32 len ceil32(_25488)]
                if ceil32(_25488) > _25488:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + _25488 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + uint255(stor15.length.field_1) + 224 len ceil32(_25488) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23699 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23699)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23699)]
                if ceil32(_23699) > _23699:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23699 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23699) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23886 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23886) > _23886:
                    mem[_23886 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23886) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24849 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 192] = 32
            _25489 = mem[_24849]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 224] = mem[_24849]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 256 len ceil32(_25489)] = mem[_24849 + 32 len ceil32(_25489)]
            if ceil32(_25489) > _25489:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + _25489 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17623 + stor15.length.field_1 % 128 + 224 len ceil32(_25489) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
        _17671 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23423 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23423)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23423)]
                    if ceil32(_23423) > _23423:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23423 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23423) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23493 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23493) > _23493:
                        mem[_23493 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23493) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24850 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 192] = 32
                _25490 = mem[_24850]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 224] = mem[_24850]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 256 len ceil32(_25490)] = mem[_24850 + 32 len ceil32(_25490)]
                if ceil32(_25490) > _25490:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + _25490 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 224 len ceil32(_25490) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23494 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23494)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23494)]
                if ceil32(_23494) > _23494:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23494 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23494) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23702 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23702) > _23702:
                    mem[_23702 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23702) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24851 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 192] = 32
            _25491 = mem[_24851]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 224] = mem[_24851]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 256 len ceil32(_25491)] = mem[_24851 + 32 len ceil32(_25491)]
            if ceil32(_25491) > _25491:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + _25491 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 224 len ceil32(_25491) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _23496 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23496)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23496)]
                if ceil32(_23496) > _23496:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23496 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23496) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23703 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23703) > _23703:
                    mem[_23703 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23703) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24852 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 192] = 32
            _25492 = mem[_24852]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 224] = mem[_24852]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 256 len ceil32(_25492)] = mem[_24852 + 32 len ceil32(_25492)]
            if ceil32(_25492) > _25492:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + _25492 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + uint255(stor15.length.field_1) + 224 len ceil32(_25492) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _23704 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23704)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23704)]
            if ceil32(_23704) > _23704:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23704 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23704) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _23889 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_23889) > _23889:
                mem[_23889 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23889) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24853 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 192] = 32
        _25493 = mem[_24853]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 224] = mem[_24853]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 256 len ceil32(_25493)] = mem[_24853 + 32 len ceil32(_25493)]
        if ceil32(_25493) > _25493:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + _25493 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17671 + stor15.length.field_1 % 128 + 224 len ceil32(_25493) + 32], 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor11.length.field_1 % 128:
        if uint255(stor11.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[64] = ceil32(uint255(stor11.length.field_1)) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
            mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7152 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7152) > _7152:
                            mem[_7152 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7152) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12424 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    _12848 = mem[_12424]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12424]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12848)] = mem[_12424 + 32 len ceil32(_12848)]
                    if ceil32(_12848) > _12848:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12848 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12848) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7247 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7247) > _7247:
                        mem[_7247 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7247) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12425 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                _12849 = mem[_12425]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12425]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12849)] = mem[_12425 + 32 len ceil32(_12849)]
                if ceil32(_12849) > _12849:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12849 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12849) + 32], 
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7157 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7157) > _7157:
                        mem[_7157 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7157) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12428 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                _12852 = mem[_12428]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12428]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12852)] = mem[_12428 + 32 len ceil32(_12852)]
                if ceil32(_12852) > _12852:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12852 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12852) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _7250 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(_7250) > _7250:
                    mem[_7250 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_7250) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            s = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _12429 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
            _12853 = mem[_12429]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12429]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12853)] = mem[_12429 + 32 len ceil32(_12853)]
            if ceil32(_12853) > _12853:
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12853 + 289] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12853) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                _12492 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18638 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18638)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18638)]
                            if ceil32(_18638) > _18638:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18638 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18638) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18758 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18758) > _18758:
                                mem[_18758 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18758) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22054 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 192] = 32
                        _22886 = mem[_22054]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 224] = mem[_22054]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 256 len ceil32(_22886)] = mem[_22054 + 32 len ceil32(_22886)]
                        if ceil32(_22886) > _22886:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + _22886 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 224 len ceil32(_22886) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18759 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18759)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18759)]
                        if ceil32(_18759) > _18759:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18759 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18759) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18951 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18951) > _18951:
                            mem[_18951 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18951) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22055 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 192] = 32
                    _22887 = mem[_22055]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 224] = mem[_22055]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 256 len ceil32(_22887)] = mem[_22055 + 32 len ceil32(_22887)]
                    if ceil32(_22887) > _22887:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + _22887 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 224 len ceil32(_22887) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18761 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18761)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18761)]
                        if ceil32(_18761) > _18761:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18761 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18761) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18952 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18952) > _18952:
                            mem[_18952 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18952) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22056 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 192] = 32
                    _22888 = mem[_22056]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 224] = mem[_22056]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 256 len ceil32(_22888)] = mem[_22056 + 32 len ceil32(_22888)]
                    if ceil32(_22888) > _22888:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + _22888 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + uint255(stor15.length.field_1) + 224 len ceil32(_22888) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18953 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18953)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18953)]
                    if ceil32(_18953) > _18953:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18953 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18953) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19120 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19120) > _19120:
                        mem[_19120 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19120) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22057 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 192] = 32
                _22889 = mem[_22057]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 224] = mem[_22057]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 256 len ceil32(_22889)] = mem[_22057 + 32 len ceil32(_22889)]
                if ceil32(_22889) > _22889:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + _22889 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12492 + stor15.length.field_1 % 128 + 224 len ceil32(_22889) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
            _12594 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18641 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18641)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18641)]
                        if ceil32(_18641) > _18641:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18641 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18641) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18763 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18763) > _18763:
                            mem[_18763 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18763) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22058 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 192] = 32
                    _22890 = mem[_22058]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 224] = mem[_22058]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 256 len ceil32(_22890)] = mem[_22058 + 32 len ceil32(_22890)]
                    if ceil32(_22890) > _22890:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + _22890 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 224 len ceil32(_22890) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18764 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18764)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18764)]
                    if ceil32(_18764) > _18764:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18764 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18764) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18956 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18956) > _18956:
                        mem[_18956 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18956) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22059 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 192] = 32
                _22891 = mem[_22059]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 224] = mem[_22059]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 256 len ceil32(_22891)] = mem[_22059 + 32 len ceil32(_22891)]
                if ceil32(_22891) > _22891:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + _22891 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 224 len ceil32(_22891) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18766 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18766)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18766)]
                    if ceil32(_18766) > _18766:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18766 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18766) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18957 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18957) > _18957:
                        mem[_18957 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18957) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22060 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 192] = 32
                _22892 = mem[_22060]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 224] = mem[_22060]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 256 len ceil32(_22892)] = mem[_22060 + 32 len ceil32(_22892)]
                if ceil32(_22892) > _22892:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + _22892 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + uint255(stor15.length.field_1) + 224 len ceil32(_22892) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18958 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18958)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18958)]
                if ceil32(_18958) > _18958:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18958 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18958) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19123 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19123) > _19123:
                    mem[_19123 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19123) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22061 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 192] = 32
            _22893 = mem[_22061]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 224] = mem[_22061]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 256 len ceil32(_22893)] = mem[_22061 + 32 len ceil32(_22893)]
            if ceil32(_22893) > _22893:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + _22893 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12594 + stor15.length.field_1 % 128 + 224 len ceil32(_22893) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
            _12493 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18644 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18644)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18644)]
                        if ceil32(_18644) > _18644:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18644 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18644) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18768 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18768) > _18768:
                            mem[_18768 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18768) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22062 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 192] = 32
                    _22894 = mem[_22062]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 224] = mem[_22062]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 256 len ceil32(_22894)] = mem[_22062 + 32 len ceil32(_22894)]
                    if ceil32(_22894) > _22894:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + _22894 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 224 len ceil32(_22894) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18769 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18769)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18769)]
                    if ceil32(_18769) > _18769:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18769 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18769) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18961 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18961) > _18961:
                        mem[_18961 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18961) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22063 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 192] = 32
                _22895 = mem[_22063]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 224] = mem[_22063]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 256 len ceil32(_22895)] = mem[_22063 + 32 len ceil32(_22895)]
                if ceil32(_22895) > _22895:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + _22895 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 224 len ceil32(_22895) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18771 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18771)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18771)]
                    if ceil32(_18771) > _18771:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18771 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18771) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18962 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18962) > _18962:
                        mem[_18962 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18962) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22064 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 192] = 32
                _22896 = mem[_22064]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 224] = mem[_22064]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 256 len ceil32(_22896)] = mem[_22064 + 32 len ceil32(_22896)]
                if ceil32(_22896) > _22896:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + _22896 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + uint255(stor15.length.field_1) + 224 len ceil32(_22896) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18963 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18963)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18963)]
                if ceil32(_18963) > _18963:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18963 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18963) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19126 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19126) > _19126:
                    mem[_19126 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19126) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22065 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 192] = 32
            _22897 = mem[_22065]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 224] = mem[_22065]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 256 len ceil32(_22897)] = mem[_22065 + 32 len ceil32(_22897)]
            if ceil32(_22897) > _22897:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + _22897 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12493 + stor15.length.field_1 % 128 + 224 len ceil32(_22897) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
        _12595 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18647 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18647)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18647)]
                    if ceil32(_18647) > _18647:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18647 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18647) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18773 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18773) > _18773:
                        mem[_18773 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18773) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22066 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 192] = 32
                _22898 = mem[_22066]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 224] = mem[_22066]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 256 len ceil32(_22898)] = mem[_22066 + 32 len ceil32(_22898)]
                if ceil32(_22898) > _22898:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + _22898 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 224 len ceil32(_22898) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18774 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18774)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18774)]
                if ceil32(_18774) > _18774:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18774 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18774) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _18966 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_18966) > _18966:
                    mem[_18966 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18966) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22067 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 192] = 32
            _22899 = mem[_22067]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 224] = mem[_22067]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 256 len ceil32(_22899)] = mem[_22067 + 32 len ceil32(_22899)]
            if ceil32(_22899) > _22899:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + _22899 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 224 len ceil32(_22899) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _18776 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18776)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18776)]
                if ceil32(_18776) > _18776:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18776 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18776) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _18967 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_18967) > _18967:
                    mem[_18967 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18967) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22068 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 192] = 32
            _22900 = mem[_22068]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 224] = mem[_22068]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 256 len ceil32(_22900)] = mem[_22068 + 32 len ceil32(_22900)]
            if ceil32(_22900) > _22900:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + _22900 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + uint255(stor15.length.field_1) + 224 len ceil32(_22900) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _18968 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18968)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18968)]
            if ceil32(_18968) > _18968:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18968 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18968) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _19129 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_19129) > _19129:
                mem[_19129 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19129) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22069 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 192] = 32
        _22901 = mem[_22069]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 224] = mem[_22069]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 256 len ceil32(_22901)] = mem[_22069 + 32 len ceil32(_22901)]
        if ceil32(_22901) > _22901:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + _22901 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12595 + stor15.length.field_1 % 128 + 224 len ceil32(_22901) + 32], 
    if 31 >= stor11.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        if uint255(stor11.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[64] = ceil32(uint255(stor11.length.field_1)) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
            mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _7166 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                        if ceil32(_7166) > _7166:
                            mem[_7166 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_7166) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    _12432 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    _12856 = mem[_12432]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12432]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12856)] = mem[_12432 + 32 len ceil32(_12856)]
                    if ceil32(_12856) > _12856:
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12856 + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12856) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7256 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7256) > _7256:
                        mem[_7256 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7256) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12433 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                _12857 = mem[_12433]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12433]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12857)] = mem[_12433 + 32 len ceil32(_12857)]
                if ceil32(_12857) > _12857:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12857 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12857) + 32], 
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _7171 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(_7171) > _7171:
                        mem[_7171 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_7171) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                s = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _12436 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                _12860 = mem[_12436]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[_12436]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(_12860)] = mem[_12436 + 32 len ceil32(_12860)]
                if ceil32(_12860) > _12860:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + _12860 + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(_12860) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _7259 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(_7259) > _7259:
                    mem[_7259 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_7259) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            s = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 224] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _12437 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
            _12861 = mem[_12437]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[_12437]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(_12861)] = mem[_12437 + 32 len ceil32(_12861)]
            if ceil32(_12861) > _12861:
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + _12861 + 289] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(_12861) + 32], 
        s = 0
        idx = arg1
        while idx:
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            idx = idx / 10
            continue 
        if s > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
            if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
                _12504 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                    if bool(stor15.length):
                        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                            revert with 'NH{q', 34
                        if not bool(stor15.length):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                            _18650 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18650)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18650)]
                            if ceil32(_18650) > _18650:
                                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18650 + 256] = 0
                            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18650) + 32], 
                        if bool(stor15.length) != 1:
                            mem[64] = 0
                            _18786 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                            if ceil32(_18786) > _18786:
                                mem[_18786 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_18786) + -mem[64] + 64
                        mem[0] = 15
                        idx = 0
                        t = 0
                        while idx < uint255(stor15.length.field_1):
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                            idx = idx + 32
                            t = t + 1
                            continue 
                        _22070 = mem[64]
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 192] = 32
                        _22902 = mem[_22070]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 224] = mem[_22070]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 256 len ceil32(_22902)] = mem[_22070 + 32 len ceil32(_22902)]
                        if ceil32(_22902) > _22902:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + _22902 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 224 len ceil32(_22902) + 32], 
                    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                        _18787 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18787)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18787)]
                        if ceil32(_18787) > _18787:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18787 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18787) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18979 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18979) > _18979:
                            mem[_18979 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18979) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < stor15.length.field_1 % 128:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22071 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 192] = 32
                    _22903 = mem[_22071]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 224] = mem[_22071]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 256 len ceil32(_22903)] = mem[_22071 + 32 len ceil32(_22903)]
                    if ceil32(_22903) > _22903:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + _22903 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 224 len ceil32(_22903) + 32], 
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18789 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18789)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18789)]
                        if ceil32(_18789) > _18789:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18789 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18789) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18980 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18980) > _18980:
                            mem[_18980 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18980) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22072 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 192] = 32
                    _22904 = mem[_22072]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 224] = mem[_22072]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 256 len ceil32(_22904)] = mem[_22072 + 32 len ceil32(_22904)]
                    if ceil32(_22904) > _22904:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + _22904 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + uint255(stor15.length.field_1) + 224 len ceil32(_22904) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18981 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18981)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18981)]
                    if ceil32(_18981) > _18981:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18981 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18981) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _19132 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_19132) > _19132:
                        mem[_19132 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_19132) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22073 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 192] = 32
                _22905 = mem[_22073]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 224] = mem[_22073]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 256 len ceil32(_22905)] = mem[_22073 + 32 len ceil32(_22905)]
                if ceil32(_22905) > _22905:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + _22905 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12504 + stor15.length.field_1 % 128 + 224 len ceil32(_22905) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
            _12612 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18653 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18653)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18653)]
                        if ceil32(_18653) > _18653:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18653 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18653) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18791 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18791) > _18791:
                            mem[_18791 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18791) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22074 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 192] = 32
                    _22906 = mem[_22074]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 224] = mem[_22074]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 256 len ceil32(_22906)] = mem[_22074 + 32 len ceil32(_22906)]
                    if ceil32(_22906) > _22906:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + _22906 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 224 len ceil32(_22906) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18792 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18792)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18792)]
                    if ceil32(_18792) > _18792:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18792 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18792) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18984 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18984) > _18984:
                        mem[_18984 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18984) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22075 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 192] = 32
                _22907 = mem[_22075]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 224] = mem[_22075]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 256 len ceil32(_22907)] = mem[_22075 + 32 len ceil32(_22907)]
                if ceil32(_22907) > _22907:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + _22907 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 224 len ceil32(_22907) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18794 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18794)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18794)]
                    if ceil32(_18794) > _18794:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18794 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18794) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18985 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18985) > _18985:
                        mem[_18985 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18985) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22076 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 192] = 32
                _22908 = mem[_22076]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 224] = mem[_22076]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 256 len ceil32(_22908)] = mem[_22076 + 32 len ceil32(_22908)]
                if ceil32(_22908) > _22908:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + _22908 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + uint255(stor15.length.field_1) + 224 len ceil32(_22908) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18986 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18986)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18986)]
                if ceil32(_18986) > _18986:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18986 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18986) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19135 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19135) > _19135:
                    mem[_19135 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19135) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22077 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 192] = 32
            _22909 = mem[_22077]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 224] = mem[_22077]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 256 len ceil32(_22909)] = mem[_22077 + 32 len ceil32(_22909)]
            if ceil32(_22909) > _22909:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + _22909 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12612 + stor15.length.field_1 % 128 + 224 len ceil32(_22909) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
            _12505 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _18656 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18656)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18656)]
                        if ceil32(_18656) > _18656:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18656 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18656) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _18796 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_18796) > _18796:
                            mem[_18796 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_18796) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _22078 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 192] = 32
                    _22910 = mem[_22078]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 224] = mem[_22078]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 256 len ceil32(_22910)] = mem[_22078 + 32 len ceil32(_22910)]
                    if ceil32(_22910) > _22910:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + _22910 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 224 len ceil32(_22910) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _18797 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18797)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18797)]
                    if ceil32(_18797) > _18797:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18797 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18797) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18989 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18989) > _18989:
                        mem[_18989 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18989) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22079 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 192] = 32
                _22911 = mem[_22079]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 224] = mem[_22079]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 256 len ceil32(_22911)] = mem[_22079 + 32 len ceil32(_22911)]
                if ceil32(_22911) > _22911:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + _22911 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 224 len ceil32(_22911) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18799 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18799)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18799)]
                    if ceil32(_18799) > _18799:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18799 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18799) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18990 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18990) > _18990:
                        mem[_18990 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18990) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22080 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 192] = 32
                _22912 = mem[_22080]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 224] = mem[_22080]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 256 len ceil32(_22912)] = mem[_22080 + 32 len ceil32(_22912)]
                if ceil32(_22912) > _22912:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + _22912 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + uint255(stor15.length.field_1) + 224 len ceil32(_22912) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18991 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18991)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18991)]
                if ceil32(_18991) > _18991:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18991 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18991) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _19138 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_19138) > _19138:
                    mem[_19138 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_19138) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22081 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 192] = 32
            _22913 = mem[_22081]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 224] = mem[_22081]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 256 len ceil32(_22913)] = mem[_22081 + 32 len ceil32(_22913)]
            if ceil32(_22913) > _22913:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + _22913 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12505 + stor15.length.field_1 % 128 + 224 len ceil32(_22913) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
        _12613 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _18659 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18659)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18659)]
                    if ceil32(_18659) > _18659:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18659 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18659) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _18801 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_18801) > _18801:
                        mem[_18801 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_18801) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _22082 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 192] = 32
                _22914 = mem[_22082]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 224] = mem[_22082]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 256 len ceil32(_22914)] = mem[_22082 + 32 len ceil32(_22914)]
                if ceil32(_22914) > _22914:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + _22914 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 224 len ceil32(_22914) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _18802 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18802)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18802)]
                if ceil32(_18802) > _18802:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18802 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18802) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _18994 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_18994) > _18994:
                    mem[_18994 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18994) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22083 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 192] = 32
            _22915 = mem[_22083]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 224] = mem[_22083]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 256 len ceil32(_22915)] = mem[_22083 + 32 len ceil32(_22915)]
            if ceil32(_22915) > _22915:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + _22915 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 224 len ceil32(_22915) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _18804 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_18804)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18804)]
                if ceil32(_18804) > _18804:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _18804 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_18804) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _18995 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_18995) > _18995:
                    mem[_18995 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_18995) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _22084 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 192] = 32
            _22916 = mem[_22084]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 224] = mem[_22084]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 256 len ceil32(_22916)] = mem[_22084 + 32 len ceil32(_22916)]
            if ceil32(_22916) > _22916:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + _22916 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + uint255(stor15.length.field_1) + 224 len ceil32(_22916) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _18996 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_18996)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_18996)]
            if ceil32(_18996) > _18996:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _18996 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_18996) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _19141 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_19141) > _19141:
                mem[_19141 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_19141) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _22085 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 192] = 32
        _22917 = mem[_22085]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 224] = mem[_22085]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 256 len ceil32(_22917)] = mem[_22085 + 32 len ceil32(_22917)]
        if ceil32(_22917) > _22917:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + _22917 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _12613 + stor15.length.field_1 % 128 + 224 len ceil32(_22917) + 32], 
    mem[0] = 11
    mem[128] = uint256(stor11.field_0)
    idx = 128
    s = 0
    while stor11.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint255(stor11.length.field_1) <= 0:
        return ''
    if not arg1:
        mem[ceil32(uint255(stor11.length.field_1)) + 128] = 1
        mem[ceil32(uint255(stor11.length.field_1)) + 160] = '0'
        mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 224] = '0'
        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = 0
        if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    var87001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                if bool(stor15.length) == 1:
                    idx = 0
                    s = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                        return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
                mem[64] = 0
                _13334 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(_13334)
                if ceil32(_13334) > _13334:
                    mem[_13334 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13334) + -mem[64] + 64
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            if bool(stor15.length) == 1:
                idx = 0
                s = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            mem[64] = 0
            _13418 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
            var89001 = ceil32(_13418)
            if ceil32(_13418) > _13418:
                mem[_13418 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_13418) + -mem[64] + 64
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                var88001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            if bool(stor15.length) == 1:
                idx = 0
                s = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
                    return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + uint255(stor15.length.field_1) + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
            mem[64] = 0
            _13339 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
            var89001 = ceil32(_13339)
            if ceil32(_13339) > _13339:
                mem[_13339 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_13339) + -mem[64] + 64
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 225] = Mask(248, 8, stor15.length)
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
            var89001 = ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])
        else:
            if bool(stor15.length) != 1:
                mem[64] = 0
                _13421 = mem[ceil32(uint255(stor11.length.field_1)) + 192]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
                if ceil32(_13421) > _13421:
                    mem[_13421 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_13421) + -mem[64] + 64
            idx = 0
            s = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + idx + 225] = stor15[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 225] = 32
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257] = mem[ceil32(uint255(stor11.length.field_1)) + 192]
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])] = mem[ceil32(uint255(stor11.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) <= mem[ceil32(uint255(stor11.length.field_1)) + 192]:
            return Array(len=mem[ceil32(uint255(stor11.length.field_1)) + 192], data=mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 289 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192])]), 
        mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + mem[ceil32(uint255(stor11.length.field_1)) + 192] + 289] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + stor15.length.field_1 % 128 + 257 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 192]) + 32], 
    s = 0
    idx = arg1
    while idx:
        if s == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(uint255(stor11.length.field_1)) + 128] = s
    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
            _17632 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
                if bool(stor15.length):
                    if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                        revert with 'NH{q', 34
                    if not bool(stor15.length):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                        _23426 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23426)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23426)]
                        if ceil32(_23426) > _23426:
                            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23426 + 256] = 0
                        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23426) + 32], 
                    if bool(stor15.length) != 1:
                        mem[64] = 0
                        _23530 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                        if ceil32(_23530) > _23530:
                            mem[_23530 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_23530) + -mem[64] + 64
                    mem[0] = 15
                    idx = 0
                    t = 0
                    while idx < uint255(stor15.length.field_1):
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                        idx = idx + 32
                        t = t + 1
                        continue 
                    _24854 = mem[64]
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 192] = 32
                    _25494 = mem[_24854]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 224] = mem[_24854]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 256 len ceil32(_25494)] = mem[_24854 + 32 len ceil32(_25494)]
                    if ceil32(_25494) > _25494:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + _25494 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 224 len ceil32(_25494) + 32], 
                if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                    _23531 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23531)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23531)]
                    if ceil32(_23531) > _23531:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23531 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23531) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23739 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23739) > _23739:
                        mem[_23739 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23739) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < stor15.length.field_1 % 128:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24855 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 192] = 32
                _25495 = mem[_24855]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 224] = mem[_24855]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 256 len ceil32(_25495)] = mem[_24855 + 32 len ceil32(_25495)]
                if ceil32(_25495) > _25495:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + _25495 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 224 len ceil32(_25495) + 32], 
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23533 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23533)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23533)]
                    if ceil32(_23533) > _23533:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23533 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23533) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23740 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23740) > _23740:
                        mem[_23740 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23740) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24856 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 192] = 32
                _25496 = mem[_24856]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 224] = mem[_24856]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 256 len ceil32(_25496)] = mem[_24856 + 32 len ceil32(_25496)]
                if ceil32(_25496) > _25496:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + _25496 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + uint255(stor15.length.field_1) + 224 len ceil32(_25496) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23741 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23741)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23741)]
                if ceil32(_23741) > _23741:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23741 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23741) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23892 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23892) > _23892:
                    mem[_23892 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23892) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24857 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 192] = 32
            _25497 = mem[_24857]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 224] = mem[_24857]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 256 len ceil32(_25497)] = mem[_24857 + 32 len ceil32(_25497)]
            if ceil32(_25497) > _25497:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + _25497 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17632 + stor15.length.field_1 % 128 + 224 len ceil32(_25497) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
        _17704 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23429 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23429)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23429)]
                    if ceil32(_23429) > _23429:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23429 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23429) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23535 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23535) > _23535:
                        mem[_23535 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23535) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24858 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 192] = 32
                _25498 = mem[_24858]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 224] = mem[_24858]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 256 len ceil32(_25498)] = mem[_24858 + 32 len ceil32(_25498)]
                if ceil32(_25498) > _25498:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + _25498 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 224 len ceil32(_25498) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23536 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23536)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23536)]
                if ceil32(_23536) > _23536:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23536 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23536) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23744 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23744) > _23744:
                    mem[_23744 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23744) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24859 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 192] = 32
            _25499 = mem[_24859]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 224] = mem[_24859]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 256 len ceil32(_25499)] = mem[_24859 + 32 len ceil32(_25499)]
            if ceil32(_25499) > _25499:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + _25499 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 224 len ceil32(_25499) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _23538 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23538)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23538)]
                if ceil32(_23538) > _23538:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23538 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23538) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23745 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23745) > _23745:
                    mem[_23745 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23745) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24860 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 192] = 32
            _25500 = mem[_24860]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 224] = mem[_24860]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 256 len ceil32(_25500)] = mem[_24860 + 32 len ceil32(_25500)]
            if ceil32(_25500) > _25500:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + _25500 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + uint255(stor15.length.field_1) + 224 len ceil32(_25500) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _23746 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23746)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23746)]
            if ceil32(_23746) > _23746:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23746 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23746) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _23895 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_23895) > _23895:
                mem[_23895 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23895) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24861 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 192] = 32
        _25501 = mem[_24861]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 224] = mem[_24861]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 256 len ceil32(_25501)] = mem[_24861 + 32 len ceil32(_25501)]
        if ceil32(_25501) > _25501:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + _25501 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17704 + stor15.length.field_1 % 128 + 224 len ceil32(_25501) + 32], 
    mem[ceil32(uint255(stor11.length.field_1)) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(uint255(stor11.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
    if ceil32(uint255(stor11.length.field_1)) <= uint255(stor11.length.field_1):
        _17633 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
            if bool(stor15.length):
                if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor15.length):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                    _23432 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23432)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23432)]
                    if ceil32(_23432) > _23432:
                        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23432 + 256] = 0
                    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23432) + 32], 
                if bool(stor15.length) != 1:
                    mem[64] = 0
                    _23540 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                    mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                    if ceil32(_23540) > _23540:
                        mem[_23540 + 64] = 0
                    return memory
                      from mem[64]
                       len ceil32(_23540) + -mem[64] + 64
                mem[0] = 15
                idx = 0
                t = 0
                while idx < uint255(stor15.length.field_1):
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                    idx = idx + 32
                    t = t + 1
                    continue 
                _24862 = mem[64]
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 192] = 32
                _25502 = mem[_24862]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 224] = mem[_24862]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 256 len ceil32(_25502)] = mem[_24862 + 32 len ceil32(_25502)]
                if ceil32(_25502) > _25502:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + _25502 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 224 len ceil32(_25502) + 32], 
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
                _23541 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23541)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23541)]
                if ceil32(_23541) > _23541:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23541 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23541) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23749 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23749) > _23749:
                    mem[_23749 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23749) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < stor15.length.field_1 % 128:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24863 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 192] = 32
            _25503 = mem[_24863]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 224] = mem[_24863]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 256 len ceil32(_25503)] = mem[_24863 + 32 len ceil32(_25503)]
            if ceil32(_25503) > _25503:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + _25503 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 224 len ceil32(_25503) + 32], 
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _23543 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23543)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23543)]
                if ceil32(_23543) > _23543:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23543 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23543) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23750 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23750) > _23750:
                    mem[_23750 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23750) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24864 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 192] = 32
            _25504 = mem[_24864]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 224] = mem[_24864]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 256 len ceil32(_25504)] = mem[_24864 + 32 len ceil32(_25504)]
            if ceil32(_25504) > _25504:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + _25504 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + uint255(stor15.length.field_1) + 224 len ceil32(_25504) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _23751 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23751)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23751)]
            if ceil32(_23751) > _23751:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23751 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23751) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _23898 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_23898) > _23898:
                mem[_23898 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23898) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24865 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 192] = 32
        _25505 = mem[_24865]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 224] = mem[_24865]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 256 len ceil32(_25505)] = mem[_24865 + 32 len ceil32(_25505)]
        if ceil32(_25505) > _25505:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + _25505 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17633 + stor15.length.field_1 % 128 + 224 len ceil32(_25505) + 32], 
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192] = 0
    _17705 = mem[ceil32(uint255(stor11.length.field_1)) + 128]
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])] = mem[ceil32(uint255(stor11.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128])]
    if ceil32(mem[ceil32(uint255(stor11.length.field_1)) + 128]) <= mem[ceil32(uint255(stor11.length.field_1)) + 128]:
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor15.length):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
                mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
                _23435 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23435)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23435)]
                if ceil32(_23435) > _23435:
                    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23435 + 256] = 0
                return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23435) + 32], 
            if bool(stor15.length) != 1:
                mem[64] = 0
                _23545 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
                mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
                if ceil32(_23545) > _23545:
                    mem[_23545 + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_23545) + -mem[64] + 64
            mem[0] = 15
            idx = 0
            t = 0
            while idx < uint255(stor15.length.field_1):
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
                idx = idx + 32
                t = t + 1
                continue 
            _24866 = mem[64]
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 192] = 32
            _25506 = mem[_24866]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 224] = mem[_24866]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 256 len ceil32(_25506)] = mem[_24866 + 32 len ceil32(_25506)]
            if ceil32(_25506) > _25506:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + _25506 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 224 len ceil32(_25506) + 32], 
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
            _23546 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23546)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23546)]
            if ceil32(_23546) > _23546:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23546 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23546) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _23754 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_23754) > _23754:
                mem[_23754 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23754) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < stor15.length.field_1 % 128:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24867 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 192] = 32
        _25507 = mem[_24867]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 224] = mem[_24867]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 256 len ceil32(_25507)] = mem[_24867 + 32 len ceil32(_25507)]
        if ceil32(_25507) > _25507:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + _25507 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 224 len ceil32(_25507) + 32], 
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = 0
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor15.length):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
            mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 192] = 32
            _23548 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 256 len ceil32(_23548)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23548)]
            if ceil32(_23548) > _23548:
                mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + _23548 + 256] = 0
            return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + uint255(stor15.length.field_1) + 224 len ceil32(_23548) + 32], 
        if bool(stor15.length) != 1:
            mem[64] = 0
            _23755 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
            mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
            if ceil32(_23755) > _23755:
                mem[_23755 + 64] = 0
            return memory
              from mem[64]
               len ceil32(_23755) + -mem[64] + 64
        mem[0] = 15
        idx = 0
        t = 0
        while idx < uint255(stor15.length.field_1):
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
            idx = idx + 32
            t = t + 1
            continue 
        _24868 = mem[64]
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 192] = 32
        _25508 = mem[_24868]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 224] = mem[_24868]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 256 len ceil32(_25508)] = mem[_24868 + 32 len ceil32(_25508)]
        if ceil32(_25508) > _25508:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + _25508 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + uint255(stor15.length.field_1) + 224 len ceil32(_25508) + 32], 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor15.length):
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + 192] = Mask(248, 8, stor15.length)
        mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 192] = 32
        _23756 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 256 len ceil32(_23756)] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(_23756)]
        if ceil32(_23756) > _23756:
            mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + _23756 + 256] = 0
        return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + stor15.length.field_1 % 128 + 224 len ceil32(_23756) + 32], 
    if bool(stor15.length) != 1:
        mem[64] = 0
        _23901 = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160]
        mem[64 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])] = mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + 160])]
        if ceil32(_23901) > _23901:
            mem[_23901 + 64] = 0
        return memory
          from mem[64]
           len ceil32(_23901) + -mem[64] + 64
    mem[0] = 15
    idx = 0
    t = 0
    while idx < stor15.length.field_1 % 128:
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + mem[ceil32(uint255(stor11.length.field_1)) + 128] + idx + 192] = stor15[t].field_0
        idx = idx + 32
        t = t + 1
        continue 
    _24869 = mem[64]
    mem[64] = ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 192
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 192] = 32
    _25509 = mem[_24869]
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 224] = mem[_24869]
    mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 256 len ceil32(_25509)] = mem[_24869 + 32 len ceil32(_25509)]
    if ceil32(_25509) > _25509:
        mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + _25509 + 256] = 0
    return 32, mem[ceil32(uint255(stor11.length.field_1)) + ceil32(s) + uint255(stor11.length.field_1) + _17705 + stor15.length.field_1 % 128 + 224 len ceil32(_25509) + 32], 
}



}
