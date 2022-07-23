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
address endpointAddress;
mapping of struct sub_8ee74912;
mapping of struct stor9;
array of struct stor10;
array of struct stor11;
uint256 sub_f3234f40;
uint256 stor13;
uint256 stor14;
uint256 sub_6bb7b1d9;
uint256 maxMintPerWallet;
uint256 maxMintPerTx;
mapping of uint256 minted;
mapping of uint256 stor99;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function minted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minted[arg1]
}

function endpoint() {
    return endpointAddress
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function sub_6bb7b1d9(?) {
    return sub_6bb7b1d9
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

function maxMintPerWallet() {
    return maxMintPerWallet
}

function maxMintPerTx() {
    return maxMintPerTx
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

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f3234f40 = arg1
}

function setMaxMintPerTx(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintPerTx = arg1
}

function setPublicSaleStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6bb7b1d9 = arg1
}

function setMaxMintPerWallet(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxMintPerWallet = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
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

function sub_07e0db17(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x7e0db17 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_10ddb137(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x10ddb137 with:
         gas gas_remaining wei
        args uint16(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_42d65a8d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(endpointAddress)
    call endpointAddress.0x42d65a8d with:
         gas gas_remaining wei
        args arg1 << 240, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cbed8b9c(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint16(arg1)
    require arg2 == uint16(arg2)
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[260 len arg4.length] = arg4[all]
    mem[arg4.length + 260] = 0
    require ext_code.size(endpointAddress)
    call endpointAddress.0xcbed8b9c with:
         gas gas_remaining wei
        args 0, 0, arg2 << 240, arg3, 128, arg4.length, arg4[all], mem[arg4.length + 260 len ceil32(arg4.length) - arg4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
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
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor10[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor10.length = 0
            idx = 0
            while uint255(stor10.length.field_1) + 31 / 32 > idx:
                stor10[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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

function setContractURI(string arg1) {
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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
            if not stor5[stor2[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
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

function giveawayMint(uint8 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor13 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor13 + arg1 > stor14:
        revert with 0, 'Mint exceeds supply'
    idx = 0
    while idx < arg1:
        if stor13 == -1:
            revert with 'NH{q', 17
        stor13++
        _46 = mem[64]
        mem[64] = mem[64] + 32
        mem[_46] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13 + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor13 + 1
        mem[32] = 2
        ownerOf[stor13 + 1] = msg.sender
        emit Transfer(0, msg.sender, stor13 + 1);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor13 + 1
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_46 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor13 + 1, 128, 0
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
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == Mask(32, 224, mem[_90])
            if Mask(32, 224, mem[_90]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
        revert with 0, 'ERC721: token already minted'
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

function sub_d73f057e(?) {
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
        if uint255(stor9[cd[4] << 240].field_1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The trusted source address has already been set for the chainId!'
    else:
        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor9[cd[4] << 240].field_1 % 128:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'The trusted source address has already been set for the chainId!'
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

function mint(uint8 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'User wallet required'
    if not sub_6bb7b1d9:
        revert with 0, 'sales is not started'
    if sub_6bb7b1d9 > block.timestamp:
        revert with 0, 'sales is not started'
    if arg1 > maxMintPerTx:
        revert with 0, 'Max 2 NFTs per transaction'
    mem[0] = msg.sender
    mem[32] = 18
    if minted[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if minted[address(msg.sender)] + arg1 > maxMintPerWallet:
        revert with 0, 'limit per wallet reached'
    if stor13 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor13 + arg1 > stor14:
        revert with 0, 'Mint exceeds supply'
    idx = 0
    while idx < arg1:
        if stor13 == -1:
            revert with 'NH{q', 17
        stor13++
        _57 = mem[64]
        mem[64] = mem[64] + 32
        mem[_57] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor13 + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor13 + 1
        mem[32] = 2
        ownerOf[stor13 + 1] = msg.sender
        emit Transfer(0, msg.sender, stor13 + 1);
        if ext_code.size(msg.sender) > 0:
            mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = stor13 + 1
            mem[mem[64] + 100] = 128
            mem[mem[64] + 132] = 0
            s = 0
            while s < 0:
                mem[mem[64] + s + 164] = mem[_57 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, 0, stor13 + 1, 128, 0
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
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == Mask(32, 224, mem[_101])
            if Mask(32, 224, mem[_101]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if minted[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    minted[address(msg.sender)] += arg1
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor0.length.field_1):
                if 31 < uint255(stor0.length.field_1):
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor0.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        else:
            if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
        mem[ceil32(uint255(stor0.length.field_1)) + 192 len ceil32(uint255(stor0.length.field_1))] = mem[128 len ceil32(uint255(stor0.length.field_1))]
        if ceil32(uint255(stor0.length.field_1)) > uint255(stor0.length.field_1):
            mem[ceil32(uint255(stor0.length.field_1)) + uint255(stor0.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor0.length.field_1)), data=mem[128 len ceil32(uint255(stor0.length.field_1))], mem[(2 * ceil32(uint255(stor0.length.field_1))) + 192 len 2 * ceil32(uint255(stor0.length.field_1))]), 
    if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor0.length.field_1):
            if 31 < uint255(stor0.length.field_1):
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while uint255(stor0.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor0.length.field_8)
    else:
        if bool(stor0.length) == stor0.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor0.length.field_1 % 128) + stor0.length.field_1 % 128 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1 % 128)], mem[(2 * ceil32(stor0.length.field_1 % 128)) + 192 len 2 * ceil32(stor0.length.field_1 % 128)]), 
}

function symbol() {
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

function contractURI() {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor11.length.field_1):
                if 31 < uint255(stor11.length.field_1):
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor11.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1 % 128:
                if 31 < stor11.length.field_1 % 128:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        mem[ceil32(uint255(stor11.length.field_1)) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) > uint255(stor11.length.field_1):
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))], mem[(2 * ceil32(uint255(stor11.length.field_1))) + 192 len 2 * ceil32(uint255(stor11.length.field_1))]), 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor11.length.field_1):
            if 31 < uint255(stor11.length.field_1):
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while uint255(stor11.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1 % 128:
            if 31 < stor11.length.field_1 % 128:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    mem[ceil32(stor11.length.field_1 % 128) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) > stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)], mem[(2 * ceil32(stor11.length.field_1 % 128)) + 192 len 2 * ceil32(stor11.length.field_1 % 128)]), 
}

function baseTokenURI() {
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10.length.field_1):
                if 31 < uint255(stor10.length.field_1):
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor10.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        mem[ceil32(uint255(stor10.length.field_1)) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) > uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor10.length.field_1)), data=mem[128 len ceil32(uint255(stor10.length.field_1))], mem[(2 * ceil32(uint255(stor10.length.field_1))) + 192 len 2 * ceil32(uint255(stor10.length.field_1))]), 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10.length.field_1):
            if 31 < uint255(stor10.length.field_1):
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while uint255(stor10.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
    else:
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1 % 128)], mem[(2 * ceil32(stor10.length.field_1 % 128)) + 192 len 2 * ceil32(stor10.length.field_1 % 128)]), 
}

function sub_35d45014(?) {
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor11.length.field_1):
                if 31 < uint255(stor11.length.field_1):
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor11.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        else:
            if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1 % 128:
                if 31 < stor11.length.field_1 % 128:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
        mem[ceil32(uint255(stor11.length.field_1)) + 192 len ceil32(uint255(stor11.length.field_1))] = mem[128 len ceil32(uint255(stor11.length.field_1))]
        if ceil32(uint255(stor11.length.field_1)) > uint255(stor11.length.field_1):
            mem[ceil32(uint255(stor11.length.field_1)) + uint255(stor11.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor11.length.field_1)), data=mem[128 len ceil32(uint255(stor11.length.field_1))], mem[(2 * ceil32(uint255(stor11.length.field_1))) + 192 len 2 * ceil32(uint255(stor11.length.field_1))]), 
    if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == uint255(stor11.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor11.length.field_1):
            if 31 < uint255(stor11.length.field_1):
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while uint255(stor11.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    else:
        if bool(stor11.length) == stor11.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1 % 128:
            if 31 < stor11.length.field_1 % 128:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor11.length.field_8)
    mem[ceil32(stor11.length.field_1 % 128) + 192 len ceil32(stor11.length.field_1 % 128)] = mem[128 len ceil32(stor11.length.field_1 % 128)]
    if ceil32(stor11.length.field_1 % 128) > stor11.length.field_1 % 128:
        mem[ceil32(stor11.length.field_1 % 128) + stor11.length.field_1 % 128 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1 % 128)], mem[(2 * ceil32(stor11.length.field_1 % 128)) + 192 len 2 * ceil32(stor11.length.field_1 % 128)]), 
}

function sub_81c986ee(?) {
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

function sub_cf89fa03(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Message sender must own the Little Mouse.'
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor9[arg1 << 240].field_1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is not a trusted source source.'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor9[arg1 << 240].field_1 % 128:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is not a trusted source source.'
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg2] = 0
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], 0, arg2);
    if balanceOf[stor2[arg2]] < 1:
        revert with 'NH{q', 17
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
    require ext_code.size(endpointAddress)
    staticcall endpointAddress.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, sub_f3234f40, 0, uint16(arg1) << 192 >> 16, 0
    mem[258 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Little Mouse: msg.value not enough to cover messageFee. Send gas for message fees'
    mem[ceil32(return_data.size) + 258] = 0xc580310000000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 262] = uint16(arg1)
    mem[ceil32(return_data.size) + 294] = 192
    if bool(stor9[arg1 << 240].field_0):
        if bool(stor9[arg1 << 240].field_0) == uint255(stor9[arg1 << 240].field_1) < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = uint255(stor9[arg1 << 240].field_1)
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(endpointAddress)
            call endpointAddress.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
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
                require ext_code.size(endpointAddress)
                call endpointAddress.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_1)) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_1)) + 320, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_1)) + 32], msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, sub_f3234f40, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(endpointAddress)
                call endpointAddress.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[ceil32(return_data.size) + 454] = stor9[arg1 << 240].field_1 % 128
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(endpointAddress)
            call endpointAddress.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, sub_f3234f40, ext_call.return_data[0 len 30] >> 16, 0
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
                require ext_code.size(endpointAddress)
                call endpointAddress.0xc5803100 with:
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
                require ext_code.size(endpointAddress)
                call endpointAddress.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
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
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if not bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor10.length.field_1):
                if 31 >= uint255(stor10.length.field_1):
                    mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
                else:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor10.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 224] = '0'
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 225] = 32
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 257] = mem[ceil32(stor10.length.field_1 % 128) + 192]
            mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])] = mem[ceil32(stor10.length.field_1 % 128) + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]
            if ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192]) > mem[ceil32(stor10.length.field_1 % 128) + 192]:
                mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 192] + 289] = 0
            return Array(len=mem[ceil32(stor10.length.field_1 % 128) + 192], data=mem[ceil32(stor10.length.field_1 % 128) + stor10.length.field_1 % 128 + 289 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 192])]), 
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
        mem[ceil32(stor10.length.field_1 % 128) + 128] = s
        if s:
            mem[ceil32(stor10.length.field_1 % 128) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(stor10.length.field_1 % 128) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(stor10.length.field_1 % 128) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(stor10.length.field_1 % 128)] = mem[128 len ceil32(stor10.length.field_1 % 128)]
        if ceil32(stor10.length.field_1 % 128) > stor10.length.field_1 % 128:
            mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192] = 0
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])] = mem[ceil32(stor10.length.field_1 % 128) + 160 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + 128])]
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + 192] = 32
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + 224] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])] = mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 192 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]
        if ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]) <= mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]:
            return Array(len=mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160], data=mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + 256 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160])]), 
        mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160] + 256] = 0
        return 32, mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + stor10.length.field_1 % 128 + mem[ceil32(stor10.length.field_1 % 128) + 128] + 224 len ceil32(mem[ceil32(stor10.length.field_1 % 128) + ceil32(s) + 160]) + 32], 
    if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
        revert with 'NH{q', 34
    mem[96] = uint255(stor10.length.field_1)
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor10.length.field_1):
            if uint255(stor10.length.field_1) <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
                    mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
                return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
            mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
                if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                    mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                        _3670 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3670)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3670)]
                        if ceil32(_3670) > _3670:
                            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3670 + 256] = 0
                        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3670) + 32], 
                    _3702 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3702)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3702)]
                    if ceil32(_3702) > _3702:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3702 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3702) + 32], 
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3671 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3671)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3671)]
                    if ceil32(_3671) > _3671:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3671 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3671) + 32], 
                _3703 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3703)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3703)]
                if ceil32(_3703) > _3703:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3703 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3703) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3672 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3672)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3672)]
                    if ceil32(_3672) > _3672:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3672 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3672) + 32], 
                _3704 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3704)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3704)]
                if ceil32(_3704) > _3704:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3704 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3704) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3673 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3673)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3673)]
                if ceil32(_3673) > _3673:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3673 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3673) + 32], 
            _3705 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3705)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3705)]
            if ceil32(_3705) > _3705:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3705 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3705) + 32], 
        if 31 >= uint255(stor10.length.field_1):
            mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
            if uint255(stor10.length.field_1) <= 0:
                return ''
            if not arg1:
                mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
                    mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
                return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
            mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
            if not s:
                t = s
                idx = arg1
                while idx:
                    if t < 1:
                        revert with 'NH{q', 17
                    if 48 > -(idx % 10) - 1:
                        revert with 'NH{q', 17
                    if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                        revert with 'NH{q', 50
                    mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                    t = t - 1
                    idx = idx / 10
                    continue 
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
                if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                    mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                    if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                        _3674 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3674)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3674)]
                        if ceil32(_3674) > _3674:
                            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3674 + 256] = 0
                        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3674) + 32], 
                    _3706 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3706)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3706)]
                    if ceil32(_3706) > _3706:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3706 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3706) + 32], 
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3675 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3675)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3675)]
                    if ceil32(_3675) > _3675:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3675 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3675) + 32], 
                _3707 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3707)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3707)]
                if ceil32(_3707) > _3707:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3707 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3707) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3676 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3676)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3676)]
                    if ceil32(_3676) > _3676:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3676 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3676) + 32], 
                _3708 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3708)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3708)]
                if ceil32(_3708) > _3708:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3708 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3708) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3677 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3677)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3677)]
                if ceil32(_3677) > _3677:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3677 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3677) + 32], 
            _3709 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3709)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3709)]
            if ceil32(_3709) > _3709:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3709 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3709) + 32], 
        mem[0] = 10
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while uint255(stor10.length.field_1) + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if uint255(stor10.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
            return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
        mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                    _4406 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4406)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4406)]
                    if ceil32(_4406) > _4406:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4406 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4406) + 32], 
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                _4422 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4422)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4422)]
                if ceil32(_4422) > _4422:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4422 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4422) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                _4407 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4407)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4407)]
                if ceil32(_4407) > _4407:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4407 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4407) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4423 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4423)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4423)]
            if ceil32(_4423) > _4423:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4423 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4423) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                _4408 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4408)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4408)]
                if ceil32(_4408) > _4408:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4408 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4408) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4424 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4424)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4424)]
            if ceil32(_4424) > _4424:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4424 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4424) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4409 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4409)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4409)]
            if ceil32(_4409) > _4409:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4409 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4409) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        _4425 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4425)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4425)]
        if ceil32(_4425) > _4425:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4425 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4425) + 32], 
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not stor10.length.field_1 % 128:
        if uint255(stor10.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
            return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
        mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3678 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3678)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3678)]
                    if ceil32(_3678) > _3678:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3678 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3678) + 32], 
                _3710 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3710)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3710)]
                if ceil32(_3710) > _3710:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3710 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3710) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3679 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3679)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3679)]
                if ceil32(_3679) > _3679:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3679 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3679) + 32], 
            _3711 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3711)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3711)]
            if ceil32(_3711) > _3711:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3711 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3711) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3680 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3680)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3680)]
                if ceil32(_3680) > _3680:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3680 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3680) + 32], 
            _3712 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3712)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3712)]
            if ceil32(_3712) > _3712:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3712 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3712) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            _3681 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3681)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3681)]
            if ceil32(_3681) > _3681:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3681 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3681) + 32], 
        _3713 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3713)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3713)]
        if ceil32(_3713) > _3713:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3713 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3713) + 32], 
    if 31 >= stor10.length.field_1 % 128:
        mem[128] = 256 * Mask(248, 0, stor10.length.field_8)
        if uint255(stor10.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
                mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
            return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
        mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    revert with 'NH{q', 50
                mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
            if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                    _3682 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3682)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3682)]
                    if ceil32(_3682) > _3682:
                        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3682 + 256] = 0
                    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3682) + 32], 
                _3714 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3714)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3714)]
                if ceil32(_3714) > _3714:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3714 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3714) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3683 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3683)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3683)]
                if ceil32(_3683) > _3683:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3683 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3683) + 32], 
            _3715 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3715)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3715)]
            if ceil32(_3715) > _3715:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3715 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3715) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                _3684 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3684)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3684)]
                if ceil32(_3684) > _3684:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3684 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3684) + 32], 
            _3716 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3716)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3716)]
            if ceil32(_3716) > _3716:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3716 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3716) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            _3685 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3685)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3685)]
            if ceil32(_3685) > _3685:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3685 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3685) + 32], 
        _3717 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_3717)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_3717)]
        if ceil32(_3717) > _3717:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _3717 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_3717) + 32], 
    mem[0] = 10
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while stor10.length.field_1 % 128 + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if uint255(stor10.length.field_1) <= 0:
        return ''
    if not arg1:
        mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 224] = '0'
        mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 225] = 32
        mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 257] = mem[ceil32(uint255(stor10.length.field_1)) + 192]
        mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])] = mem[ceil32(uint255(stor10.length.field_1)) + 224 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192]) > mem[ceil32(uint255(stor10.length.field_1)) + 192]:
            mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 192] + 289] = 0
        return Array(len=mem[ceil32(uint255(stor10.length.field_1)) + 192], data=mem[ceil32(uint255(stor10.length.field_1)) + uint255(stor10.length.field_1) + 289 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 192])]), 
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
    mem[ceil32(uint255(stor10.length.field_1)) + 128] = s
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                revert with 'NH{q', 50
            mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
        if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
            if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
                mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
                _4410 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4410)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4410)]
                if ceil32(_4410) > _4410:
                    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4410 + 256] = 0
                return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4410) + 32], 
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4426 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4426)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4426)]
            if ceil32(_4426) > _4426:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4426 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4426) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4411 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4411)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4411)]
            if ceil32(_4411) > _4411:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4411 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4411) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        _4427 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4427)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4427)]
        if ceil32(_4427) > _4427:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4427 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4427) + 32], 
    mem[ceil32(uint255(stor10.length.field_1)) + 160 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            revert with 'NH{q', 50
        mem[t + ceil32(uint255(stor10.length.field_1)) + 159 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(uint255(stor10.length.field_1))] = mem[128 len ceil32(uint255(stor10.length.field_1))]
    if ceil32(uint255(stor10.length.field_1)) <= uint255(stor10.length.field_1):
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
        if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
            mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
            _4412 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4412)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4412)]
            if ceil32(_4412) > _4412:
                mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4412 + 256] = 0
            return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4412) + 32], 
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        _4428 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4428)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4428)]
        if ceil32(_4428) > _4428:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4428 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4428) + 32], 
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192] = 0
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + 192 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])] = mem[ceil32(uint255(stor10.length.field_1)) + 160 len ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128])]
    if ceil32(mem[ceil32(uint255(stor10.length.field_1)) + 128]) <= mem[ceil32(uint255(stor10.length.field_1)) + 128]:
        mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
        _4413 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4413)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4413)]
        if ceil32(_4413) > _4413:
            mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4413 + 256] = 0
        return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4413) + 32], 
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 0
    mem[64] = ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 192] = 32
    _4429 = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 160]
    mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 256 len ceil32(_4429)] = mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + 192 len ceil32(_4429)]
    if ceil32(_4429) > _4429:
        mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + _4429 + 256] = 0
    return 32, mem[ceil32(uint255(stor10.length.field_1)) + ceil32(s) + uint255(stor10.length.field_1) + mem[ceil32(uint255(stor10.length.field_1)) + 128] + 224 len ceil32(_4429) + 32], 
}



}
