contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
uint8 stor0;
address owner; offset 8
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
address stor7;
mapping of struct sub_8ee74912;
mapping of struct stor9;
array of struct stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function paused() {
    return bool(stor0)
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
    stor14 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function Start() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OmniPepe: Failed to withdraw Ether'
    else:
        if not ext_call.success:
            revert with 0, 'OmniPepe: Failed to withdraw Ether'
    ('bool', 'ext_call.success')
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

function ownerMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11 > 2222:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OmniPepe: you already give the 200 free mint'
    if stor11 == -1:
        revert with 0, 17
    stor11++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor11 + 1] = arg1
    emit Transfer(0, arg1, stor11 + 1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), 0, stor11 + 1, 128, 0
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

function mint(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0:
        revert with 0, 'Pausable: paused'
    if arg1 >= 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OmniPepe: Max 2 NFTs per transaction'
    if stor12 > !arg1:
        revert with 0, 17
    if stor12 + arg1 > stor13:
        revert with 0, 'OmniPepe: Mint exceeds supply'
    idx = 1
    while idx <= arg1:
        if stor12 == -1:
            revert with 0, 17
        stor12++
        _44 = mem[64]
        mem[64] = mem[64] + 32
        mem[_44] = 0
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
                mem[s + mem[64] + 164] = mem[s + _44 + 32]
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
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_84] == Mask(32, 224, mem[_84])
            if Mask(32, 224, mem[_84]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OmniPepe: You must own the token to traverse'
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_0) * 0.5 < 32:
            revert with 0, 34
        if uint255(stor9[arg1 << 240].field_0) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'OmniPepe: This chain is currently unavailable for travel'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor9[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'OmniPepe: This chain is currently unavailable for travel'
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
    mem[226] = stor14
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor14, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor14, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'OmniPepe: msg.value not enough to cover messageFee. Send gas for message fees'
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
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
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 320, 2 * Mask(256, -1, stor9[arg1 << 240].field_0), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_0) * 0.5) + 32], msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor14, ext_call.return_data[0 len 30]
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
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
                    args arg1 << 240, 192, ceil32(stor9[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[arg1 << 240].field_1 % 128) + 320, stor9[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor9[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor14, ext_call.return_data[0 len 30]
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
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10.length):
                if 31 >= uint255(stor10.length) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
                else:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor10.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 0, 34
            if not stor10.length.field_1 % 128:
                if uint255(stor10.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
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
                if s:
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
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= stor10.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
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
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
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
        if s:
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
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 >= uint255(stor10.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor10.length.field_1 % 128:
            if 31 >= stor10.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
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
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) > mem[ceil32(stor10.length.field_1 % 128) + 192]:
            mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
        return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
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
    if s:
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
    if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]:
        mem[mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]), 
}

function getURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor10.length):
                if uint255(stor10.length) * 0.5 <= 0:
                    return ''
                if not arg1:
                    mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                    mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
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
                if s:
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
                if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                    mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]
                if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]:
                    return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]), 
                mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) + 32], 
            if 31 >= uint255(stor10.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor10.length.field_1 % 128:
                if 31 >= stor10.length.field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
                    if uint255(stor10.length) * 0.5 <= 0:
                        return ''
                    if not arg1:
                        mem[ceil32(uint255(stor10.length) * 0.5) + 224 len ceil32(uint255(stor10.length) * 0.5)] = mem[128 len ceil32(uint255(stor10.length) * 0.5)]
                        mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
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
                    if s:
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
                    if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
                        mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
                    mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]
                    if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) <= mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]:
                        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]), 
                    mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
                    return 32, mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) + 32], 
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
            mem[ceil32(uint255(stor10.length) * 0.5) + (uint255(stor10.length) * 0.5) + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
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
        if s:
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
        if ceil32(uint255(stor10.length) * 0.5) > uint255(stor10.length) * 0.5:
            mem[(uint255(stor10.length) * 0.5) + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192] = 0
        mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])] = mem[ceil32(uint255(stor10.length) * 0.5) + 160 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + 128])]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 192] = 32
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 224] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]
        mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])] = mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 192 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]) > mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160]:
            mem[mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160] + mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256] = 0
        return Array(len=mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160], data=mem[mem[ceil32(uint255(stor10.length) * 0.5) + 128] + ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + (uint255(stor10.length) * 0.5) + 256 len ceil32(mem[ceil32(uint255(stor10.length) * 0.5) + ceil32(s) + 160])]), 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10.length):
            if 31 >= uint255(stor10.length) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while (uint255(stor10.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor10.length.field_1 % 128:
            if 31 >= stor10.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            else:
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
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = 0x3000000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) > mem[ceil32(stor10.length.field_1 % 128) + 192]:
            mem[mem[ceil32(stor10.length.field_1 % 128) + 192] + ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289] = 0
        return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
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
    if s:
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
    if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
        mem[stor10.length.field_1 % 128 + ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192] = 0
    mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 32
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
    mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]
    if ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]) > mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]:
        mem[mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160] + mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256] = 0
    return Array(len=mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160], data=mem[mem[ceil32(stor10.length.field_1 % 128) + 128] + ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]), 
}



}
