contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#
const baseExtension = '.json', 0

const MAX_PER_WALLET = 30

const MAX_PER_TX = 5


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
array of struct stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 minted;
uint8 paused;
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

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    return sub_8ee74912[arg1][arg2[all]][arg3].field_0, sub_8ee74912[arg1][arg2[all]][arg3].field_256
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

function sub_943fb872(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = arg1
}

function pause(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send'
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

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_c7afa661(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint16(arg1)
    require arg2 == arg2
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor14, 0, uint16(arg1) << 192 >> 16, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
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
        call arg2.0x150b7a02 with:
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
    if ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])] > -2:
        revert with 'NH{q', 17
    balanceOf[address(mem[ceil32(ceil32(arg2.length)) + 129])]++
    ownerOf[mem[ceil32(ceil32(arg2.length)) + 161]] = mem[ceil32(ceil32(arg2.length)) + 141 len 20]
    emit Transfer(0, mem[ceil32(ceil32(arg2.length)) + 141 len 20], mem[ceil32(ceil32(arg2.length)) + 161]);
    if ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20]) > 0:
        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 141 len 20])
        call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x150b7a02 with:
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

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if paused:
        revert with 0, 'lips: Paused'
    if stor12 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor12 + arg1 > stor13:
        revert with 0, 'lips: Mint exceeds supply'
    if 5 < arg1:
        revert with 0, 'lips: Excess max per tx'
    if minted[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if 30 < minted[address(msg.sender)] + arg1:
        revert with 0, 'lips: Excess max per wallet'
    mem[0] = msg.sender
    mem[32] = 15
    if minted[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    minted[address(msg.sender)] += arg1
    idx = 0
    while idx < arg1:
        if stor12 == -1:
            revert with 'NH{q', 17
        stor12++
        _52 = mem[64]
        mem[64] = mem[64] + 32
        mem[_52] = 0
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor12 + 1]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor12 + 1
        mem[32] = 2
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
                mem[mem[64] + s + 164] = mem[_52 + s + 32]
                s = s + 32
                continue 
            require ext_code.size(msg.sender)
            call msg.sender.0x150b7a02 with:
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
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == Mask(32, 224, mem[_96])
            if Mask(32, 224, mem[_96]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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

function baseURI() {
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
    if balanceOf[stor2[arg2]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg2]]--
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'lips: msg.value not enough to cover messageFee. Send gas for message fees'
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), Mask(248, 8, stor9[arg1 << 240].field_0), 64, msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
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
                    args arg1 << 240, 192, ceil32(uint255(stor9[arg1 << 240].field_1)) + 224, msg.sender, 0, ceil32(uint255(stor9[arg1 << 240].field_1)) + 320, 2 * Mask(256, -1, uint255(stor9[arg1 << 240].field_1)), mem[ceil32(return_data.size) + 486 len ceil32(uint255(stor9[arg1 << 240].field_1)) + 32], msg.sender, arg2, 34, stor14, ext_call.return_data[0 len 30] >> 16, 0
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
            revert with 'NH{q', 34
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
                    mem[ceil32(return_data.size) + idx + 486] = stor9[arg1 << 240][s].field_0
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
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 2
    if not ownerOf[arg1]:
        revert with 0, 'Token does not exist.'
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor10.length.field_1) <= 0:
            return ''
        if not arg1:
            mem[96] = 1
            mem[128] = '0'
            mem[160] = 5
            mem[192] = '.json'
            if bool(stor10.length):
                if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor10.length):
                    mem[256] = Mask(248, 8, stor10.length)
                else:
                    if bool(stor10.length) != 1:
                        mem[64] = 6
                        _1605 = mem[224]
                        mem[38] = mem[224]
                        mem[70 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                        if ceil32(_1605) > _1605:
                            mem[_1605 + 70] = 0
                        return 32, mem[38 len ceil32(_1605) + 32]
                    idx = 0
                    s = 0
                    while idx < uint255(stor10.length.field_1):
                        mem[idx + 256] = stor10[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[uint255(stor10.length.field_1) + 256] = '0'
                mem[uint255(stor10.length.field_1) + 257] = '.json'
                mem[uint255(stor10.length.field_1) + 262] = 32
                mem[uint255(stor10.length.field_1) + 294] = mem[224]
                mem[uint255(stor10.length.field_1) + 326 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(mem[224]) > mem[224]:
                    mem[uint255(stor10.length.field_1) + mem[224] + 326] = 0
                return Array(len=mem[224], data=mem[uint255(stor10.length.field_1) + 326 len ceil32(mem[224])])
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[256] = Mask(248, 8, stor10.length)
            else:
                if bool(stor10.length) != 1:
                    mem[64] = 6
                    _1609 = mem[224]
                    mem[38] = mem[224]
                    mem[70 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(_1609) > _1609:
                        mem[_1609 + 70] = 0
                    return 32, mem[38 len ceil32(_1609) + 32]
                idx = 0
                s = 0
                while idx < stor10.length.field_1 % 128:
                    mem[idx + 256] = stor10[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[stor10.length.field_1 % 128 + 256] = '0'
            mem[stor10.length.field_1 % 128 + 257] = '.json'
            mem[stor10.length.field_1 % 128 + 262] = 32
            mem[stor10.length.field_1 % 128 + 294] = mem[224]
            mem[stor10.length.field_1 % 128 + 326 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[stor10.length.field_1 % 128 + mem[224] + 326] = 0
            return Array(len=mem[224], data=mem[stor10.length.field_1 % 128 + 326 len ceil32(mem[224])])
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
        mem[96] = s
        mem[64] = ceil32(s) + 128
        if not s:
            t = s
            idx = arg1
            while idx:
                if t < 1:
                    revert with 'NH{q', 17
                if 48 > -(idx % 10) - 1:
                    revert with 'NH{q', 17
                if t - 1 >= mem[96]:
                    revert with 'NH{q', 50
                mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
            _1506 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1506] = 5
            mem[_1506 + 32] = '.json'
            _1507 = mem[64]
            if bool(stor10.length):
                if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                    revert with 'NH{q', 34
                if not bool(stor10.length):
                    mem[mem[64] + 32] = Mask(248, 8, stor10.length)
                    _1634 = mem[96]
                    mem[mem[64] + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 32] = '.json'
                    mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 37] = 0
                    if ceil32(mem[96]) <= mem[96]:
                        _3542 = mem[64]
                        mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                        mem[_1507 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                        _3718 = mem[_3542]
                        mem[_1507 + uint255(stor10.length.field_1) + _1634 + 69] = mem[_3542]
                        mem[_1507 + uint255(stor10.length.field_1) + _1634 + 101 len ceil32(_3718)] = mem[_3542 + 32 len ceil32(_3718)]
                        if ceil32(_3718) > _3718:
                            mem[_1507 + uint255(stor10.length.field_1) + _1634 + _3718 + 101] = 0
                        return 32, mem[_1507 + uint255(stor10.length.field_1) + _1634 + 69 len ceil32(_3718) + 32]
                    _3543 = mem[64]
                    mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                    mem[_1507 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                    _3719 = mem[_3543]
                    mem[_1507 + uint255(stor10.length.field_1) + _1634 + 69] = mem[_3543]
                    mem[_1507 + uint255(stor10.length.field_1) + _1634 + 101 len ceil32(_3719)] = mem[_3543 + 32 len ceil32(_3719)]
                    if ceil32(_3719) > _3719:
                        mem[_1507 + uint255(stor10.length.field_1) + _1634 + _3719 + 101] = 0
                    return 32, mem[_1507 + uint255(stor10.length.field_1) + _1634 + 69 len ceil32(_3719) + 32]
                if bool(stor10.length) != 1:
                    _1658 = mem[96]
                    mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    mem[_1658] = '.json'
                    mem[_1658 + 5] = 0
                    if ceil32(_1658) <= _1658:
                        _3545 = mem[64]
                        mem[64] = _1658 + 5
                        mem[_1658 + 5] = 32
                        _3720 = mem[_3545]
                        mem[_1658 + 37] = mem[_3545]
                        mem[_1658 + 69 len ceil32(_3720)] = mem[_3545 + 32 len ceil32(_3720)]
                        if ceil32(_3720) > _3720:
                            mem[_1658 + _3720 + 69] = 0
                        return 32, mem[_1658 + 37 len ceil32(_3720) + 32]
                    _3546 = mem[64]
                    mem[64] = _1658 + 5
                    mem[_1658 + 5] = 32
                    _3721 = mem[_3546]
                    mem[_1658 + 37] = mem[_3546]
                    mem[_1658 + 69 len ceil32(_3721)] = mem[_3546 + 32 len ceil32(_3721)]
                    if ceil32(_3721) > _3721:
                        mem[_1658 + _3721 + 69] = 0
                    return 32, mem[_1658 + 37 len ceil32(_3721) + 32]
                mem[0] = 10
                idx = 0
                s = 0
                while idx < uint255(stor10.length.field_1):
                    mem[_1507 + idx + 32] = stor10[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                _2606 = mem[96]
                mem[_1507 + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(_2606) <= _2606:
                    _3544 = mem[_1506]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + 32 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                    if ceil32(_3544) <= _3544:
                        _4230 = mem[64]
                        mem[64] = _1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 32
                        mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 32] = 32
                        _4422 = mem[_4230]
                        mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 64] = mem[_4230]
                        mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 96 len ceil32(_4422)] = mem[_4230 + 32 len ceil32(_4422)]
                        if ceil32(_4422) > _4422:
                            mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + _4422 + 96] = 0
                        return 32, mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 64 len ceil32(_4422) + 32]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 32] = 0
                    _4246 = mem[64]
                    mem[64] = _1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 32
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 32] = 32
                    _4438 = mem[_4246]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 64] = mem[_4246]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 96 len ceil32(_4438)] = mem[_4246 + 32 len ceil32(_4438)]
                    if ceil32(_4438) > _4438:
                        mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + _4438 + 96] = 0
                    return 32, mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3544 + 64 len ceil32(_4438) + 32]
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + 32] = 0
                _3584 = mem[_1506]
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + 32 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                if ceil32(_3584) <= _3584:
                    _4231 = mem[64]
                    mem[64] = _1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 32
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 32] = 32
                    _4423 = mem[_4231]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 64] = mem[_4231]
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 96 len ceil32(_4423)] = mem[_4231 + 32 len ceil32(_4423)]
                    if ceil32(_4423) > _4423:
                        mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + _4423 + 96] = 0
                    return 32, mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 64 len ceil32(_4423) + 32]
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 32] = 0
                _4247 = mem[64]
                mem[64] = _1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 32
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 32] = 32
                _4439 = mem[_4247]
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 64] = mem[_4247]
                mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 96 len ceil32(_4439)] = mem[_4247 + 32 len ceil32(_4439)]
                if ceil32(_4439) > _4439:
                    mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + _4439 + 96] = 0
                return 32, mem[_1507 + uint255(stor10.length.field_1) + _2606 + _3584 + 64 len ceil32(_4439) + 32]
            if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[mem[64] + 32] = Mask(248, 8, stor10.length)
                _1659 = mem[96]
                mem[mem[64] + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 32] = '.json'
                mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 37] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3547 = mem[64]
                    mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
                    mem[_1507 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
                    _3722 = mem[_3547]
                    mem[_1507 + stor10.length.field_1 % 128 + _1659 + 69] = mem[_3547]
                    mem[_1507 + stor10.length.field_1 % 128 + _1659 + 101 len ceil32(_3722)] = mem[_3547 + 32 len ceil32(_3722)]
                    if ceil32(_3722) > _3722:
                        mem[_1507 + stor10.length.field_1 % 128 + _1659 + _3722 + 101] = 0
                    return 32, mem[_1507 + stor10.length.field_1 % 128 + _1659 + 69 len ceil32(_3722) + 32]
                _3548 = mem[64]
                mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
                mem[_1507 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
                _3723 = mem[_3548]
                mem[_1507 + stor10.length.field_1 % 128 + _1659 + 69] = mem[_3548]
                mem[_1507 + stor10.length.field_1 % 128 + _1659 + 101 len ceil32(_3723)] = mem[_3548 + 32 len ceil32(_3723)]
                if ceil32(_3723) > _3723:
                    mem[_1507 + stor10.length.field_1 % 128 + _1659 + _3723 + 101] = 0
                return 32, mem[_1507 + stor10.length.field_1 % 128 + _1659 + 69 len ceil32(_3723) + 32]
            if bool(stor10.length) != 1:
                _1690 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1690] = '.json'
                mem[_1690 + 5] = 0
                if ceil32(_1690) <= _1690:
                    _3550 = mem[64]
                    mem[64] = _1690 + 5
                    mem[_1690 + 5] = 32
                    _3724 = mem[_3550]
                    mem[_1690 + 37] = mem[_3550]
                    mem[_1690 + 69 len ceil32(_3724)] = mem[_3550 + 32 len ceil32(_3724)]
                    if ceil32(_3724) > _3724:
                        mem[_1690 + _3724 + 69] = 0
                    return 32, mem[_1690 + 37 len ceil32(_3724) + 32]
                _3551 = mem[64]
                mem[64] = _1690 + 5
                mem[_1690 + 5] = 32
                _3725 = mem[_3551]
                mem[_1690 + 37] = mem[_3551]
                mem[_1690 + 69 len ceil32(_3725)] = mem[_3551 + 32 len ceil32(_3725)]
                if ceil32(_3725) > _3725:
                    mem[_1690 + _3725 + 69] = 0
                return 32, mem[_1690 + 37 len ceil32(_3725) + 32]
            mem[0] = 10
            idx = 0
            s = 0
            while idx < stor10.length.field_1 % 128:
                mem[_1507 + idx + 32] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2607 = mem[96]
            mem[_1507 + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2607) <= _2607:
                _3549 = mem[_1506]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + 32 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
                if ceil32(_3549) <= _3549:
                    _4232 = mem[64]
                    mem[64] = _1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 32
                    mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 32] = 32
                    _4424 = mem[_4232]
                    mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 64] = mem[_4232]
                    mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 96 len ceil32(_4424)] = mem[_4232 + 32 len ceil32(_4424)]
                    if ceil32(_4424) > _4424:
                        mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + _4424 + 96] = 0
                    return 32, mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 64 len ceil32(_4424) + 32]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 32] = 0
                _4248 = mem[64]
                mem[64] = _1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 32
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 32] = 32
                _4440 = mem[_4248]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 64] = mem[_4248]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 96 len ceil32(_4440)] = mem[_4248 + 32 len ceil32(_4440)]
                if ceil32(_4440) > _4440:
                    mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + _4440 + 96] = 0
                return 32, mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3549 + 64 len ceil32(_4440) + 32]
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + 32] = 0
            _3589 = mem[_1506]
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + 32 len ceil32(mem[_1506])] = mem[_1506 + 32 len ceil32(mem[_1506])]
            if ceil32(_3589) <= _3589:
                _4233 = mem[64]
                mem[64] = _1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 32
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 32] = 32
                _4425 = mem[_4233]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 64] = mem[_4233]
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 96 len ceil32(_4425)] = mem[_4233 + 32 len ceil32(_4425)]
                if ceil32(_4425) > _4425:
                    mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + _4425 + 96] = 0
                return 32, mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 64 len ceil32(_4425) + 32]
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 32] = 0
            _4249 = mem[64]
            mem[64] = _1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 32
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 32] = 32
            _4441 = mem[_4249]
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 64] = mem[_4249]
            mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 96 len ceil32(_4441)] = mem[_4249 + 32 len ceil32(_4441)]
            if ceil32(_4441) > _4441:
                mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + _4441 + 96] = 0
            return 32, mem[_1507 + stor10.length.field_1 % 128 + _2607 + _3589 + 64 len ceil32(_4441) + 32]
        mem[128 len s] = call.data[calldata.size len s]
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1508 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1508] = 5
        mem[_1508 + 32] = '.json'
        _1509 = mem[64]
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[mem[64] + 32] = Mask(248, 8, stor10.length)
                _1635 = mem[96]
                mem[mem[64] + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 32] = '.json'
                mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 37] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3552 = mem[64]
                    mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                    mem[_1509 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                    _3726 = mem[_3552]
                    mem[_1509 + uint255(stor10.length.field_1) + _1635 + 69] = mem[_3552]
                    mem[_1509 + uint255(stor10.length.field_1) + _1635 + 101 len ceil32(_3726)] = mem[_3552 + 32 len ceil32(_3726)]
                    if ceil32(_3726) > _3726:
                        mem[_1509 + uint255(stor10.length.field_1) + _1635 + _3726 + 101] = 0
                    return 32, mem[_1509 + uint255(stor10.length.field_1) + _1635 + 69 len ceil32(_3726) + 32]
                _3553 = mem[64]
                mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                mem[_1509 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                _3727 = mem[_3553]
                mem[_1509 + uint255(stor10.length.field_1) + _1635 + 69] = mem[_3553]
                mem[_1509 + uint255(stor10.length.field_1) + _1635 + 101 len ceil32(_3727)] = mem[_3553 + 32 len ceil32(_3727)]
                if ceil32(_3727) > _3727:
                    mem[_1509 + uint255(stor10.length.field_1) + _1635 + _3727 + 101] = 0
                return 32, mem[_1509 + uint255(stor10.length.field_1) + _1635 + 69 len ceil32(_3727) + 32]
            if bool(stor10.length) != 1:
                _1660 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1660] = '.json'
                mem[_1660 + 5] = 0
                if ceil32(_1660) <= _1660:
                    _3555 = mem[64]
                    mem[64] = _1660 + 5
                    mem[_1660 + 5] = 32
                    _3728 = mem[_3555]
                    mem[_1660 + 37] = mem[_3555]
                    mem[_1660 + 69 len ceil32(_3728)] = mem[_3555 + 32 len ceil32(_3728)]
                    if ceil32(_3728) > _3728:
                        mem[_1660 + _3728 + 69] = 0
                    return 32, mem[_1660 + 37 len ceil32(_3728) + 32]
                _3556 = mem[64]
                mem[64] = _1660 + 5
                mem[_1660 + 5] = 32
                _3729 = mem[_3556]
                mem[_1660 + 37] = mem[_3556]
                mem[_1660 + 69 len ceil32(_3729)] = mem[_3556 + 32 len ceil32(_3729)]
                if ceil32(_3729) > _3729:
                    mem[_1660 + _3729 + 69] = 0
                return 32, mem[_1660 + 37 len ceil32(_3729) + 32]
            mem[0] = 10
            idx = 0
            s = 0
            while idx < uint255(stor10.length.field_1):
                mem[_1509 + idx + 32] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2608 = mem[96]
            mem[_1509 + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2608) <= _2608:
                _3554 = mem[_1508]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + 32 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
                if ceil32(_3554) <= _3554:
                    _4234 = mem[64]
                    mem[64] = _1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 32
                    mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 32] = 32
                    _4426 = mem[_4234]
                    mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 64] = mem[_4234]
                    mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 96 len ceil32(_4426)] = mem[_4234 + 32 len ceil32(_4426)]
                    if ceil32(_4426) > _4426:
                        mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + _4426 + 96] = 0
                    return 32, mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 64 len ceil32(_4426) + 32]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 32] = 0
                _4250 = mem[64]
                mem[64] = _1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 32
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 32] = 32
                _4442 = mem[_4250]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 64] = mem[_4250]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 96 len ceil32(_4442)] = mem[_4250 + 32 len ceil32(_4442)]
                if ceil32(_4442) > _4442:
                    mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + _4442 + 96] = 0
                return 32, mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3554 + 64 len ceil32(_4442) + 32]
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + 32] = 0
            _3594 = mem[_1508]
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + 32 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
            if ceil32(_3594) <= _3594:
                _4235 = mem[64]
                mem[64] = _1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 32
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 32] = 32
                _4427 = mem[_4235]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 64] = mem[_4235]
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 96 len ceil32(_4427)] = mem[_4235 + 32 len ceil32(_4427)]
                if ceil32(_4427) > _4427:
                    mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + _4427 + 96] = 0
                return 32, mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 64 len ceil32(_4427) + 32]
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 32] = 0
            _4251 = mem[64]
            mem[64] = _1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 32
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 32] = 32
            _4443 = mem[_4251]
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 64] = mem[_4251]
            mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 96 len ceil32(_4443)] = mem[_4251 + 32 len ceil32(_4443)]
            if ceil32(_4443) > _4443:
                mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + _4443 + 96] = 0
            return 32, mem[_1509 + uint255(stor10.length.field_1) + _2608 + _3594 + 64 len ceil32(_4443) + 32]
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[mem[64] + 32] = Mask(248, 8, stor10.length)
            _1661 = mem[96]
            mem[mem[64] + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 32] = '.json'
            mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 37] = 0
            if ceil32(mem[96]) <= mem[96]:
                _3557 = mem[64]
                mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
                mem[_1509 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
                _3730 = mem[_3557]
                mem[_1509 + stor10.length.field_1 % 128 + _1661 + 69] = mem[_3557]
                mem[_1509 + stor10.length.field_1 % 128 + _1661 + 101 len ceil32(_3730)] = mem[_3557 + 32 len ceil32(_3730)]
                if ceil32(_3730) > _3730:
                    mem[_1509 + stor10.length.field_1 % 128 + _1661 + _3730 + 101] = 0
                return 32, mem[_1509 + stor10.length.field_1 % 128 + _1661 + 69 len ceil32(_3730) + 32]
            _3558 = mem[64]
            mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
            mem[_1509 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
            _3731 = mem[_3558]
            mem[_1509 + stor10.length.field_1 % 128 + _1661 + 69] = mem[_3558]
            mem[_1509 + stor10.length.field_1 % 128 + _1661 + 101 len ceil32(_3731)] = mem[_3558 + 32 len ceil32(_3731)]
            if ceil32(_3731) > _3731:
                mem[_1509 + stor10.length.field_1 % 128 + _1661 + _3731 + 101] = 0
            return 32, mem[_1509 + stor10.length.field_1 % 128 + _1661 + 69 len ceil32(_3731) + 32]
        if bool(stor10.length) != 1:
            _1691 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1691] = '.json'
            mem[_1691 + 5] = 0
            if ceil32(_1691) <= _1691:
                _3560 = mem[64]
                mem[64] = _1691 + 5
                mem[_1691 + 5] = 32
                _3732 = mem[_3560]
                mem[_1691 + 37] = mem[_3560]
                mem[_1691 + 69 len ceil32(_3732)] = mem[_3560 + 32 len ceil32(_3732)]
                if ceil32(_3732) > _3732:
                    mem[_1691 + _3732 + 69] = 0
                return 32, mem[_1691 + 37 len ceil32(_3732) + 32]
            _3561 = mem[64]
            mem[64] = _1691 + 5
            mem[_1691 + 5] = 32
            _3733 = mem[_3561]
            mem[_1691 + 37] = mem[_3561]
            mem[_1691 + 69 len ceil32(_3733)] = mem[_3561 + 32 len ceil32(_3733)]
            if ceil32(_3733) > _3733:
                mem[_1691 + _3733 + 69] = 0
            return 32, mem[_1691 + 37 len ceil32(_3733) + 32]
        mem[0] = 10
        idx = 0
        s = 0
        while idx < stor10.length.field_1 % 128:
            mem[_1509 + idx + 32] = stor10[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2609 = mem[96]
        mem[_1509 + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2609) <= _2609:
            _3559 = mem[_1508]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + 32 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
            if ceil32(_3559) <= _3559:
                _4236 = mem[64]
                mem[64] = _1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 32
                mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 32] = 32
                _4428 = mem[_4236]
                mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 64] = mem[_4236]
                mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 96 len ceil32(_4428)] = mem[_4236 + 32 len ceil32(_4428)]
                if ceil32(_4428) > _4428:
                    mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + _4428 + 96] = 0
                return 32, mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 64 len ceil32(_4428) + 32]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 32] = 0
            _4252 = mem[64]
            mem[64] = _1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 32
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 32] = 32
            _4444 = mem[_4252]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 64] = mem[_4252]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 96 len ceil32(_4444)] = mem[_4252 + 32 len ceil32(_4444)]
            if ceil32(_4444) > _4444:
                mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + _4444 + 96] = 0
            return 32, mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3559 + 64 len ceil32(_4444) + 32]
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + 32] = 0
        _3599 = mem[_1508]
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + 32 len ceil32(mem[_1508])] = mem[_1508 + 32 len ceil32(mem[_1508])]
        if ceil32(_3599) <= _3599:
            _4237 = mem[64]
            mem[64] = _1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 32
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 32] = 32
            _4429 = mem[_4237]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 64] = mem[_4237]
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 96 len ceil32(_4429)] = mem[_4237 + 32 len ceil32(_4429)]
            if ceil32(_4429) > _4429:
                mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + _4429 + 96] = 0
            return 32, mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 64 len ceil32(_4429) + 32]
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 32] = 0
        _4253 = mem[64]
        mem[64] = _1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 32
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 32] = 32
        _4445 = mem[_4253]
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 64] = mem[_4253]
        mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 96 len ceil32(_4445)] = mem[_4253 + 32 len ceil32(_4445)]
        if ceil32(_4445) > _4445:
            mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + _4445 + 96] = 0
        return 32, mem[_1509 + stor10.length.field_1 % 128 + _2609 + _3599 + 64 len ceil32(_4445) + 32]
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if stor10.length.field_1 % 128 <= 0:
        return ''
    if not arg1:
        mem[96] = 1
        mem[128] = '0'
        mem[160] = 5
        mem[192] = '.json'
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[256] = Mask(248, 8, stor10.length)
            else:
                if bool(stor10.length) != 1:
                    mem[64] = 6
                    _1613 = mem[224]
                    mem[38] = mem[224]
                    mem[70 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                    if ceil32(_1613) > _1613:
                        mem[_1613 + 70] = 0
                    return 32, mem[38 len ceil32(_1613) + 32]
                idx = 0
                s = 0
                while idx < uint255(stor10.length.field_1):
                    mem[idx + 256] = stor10[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[uint255(stor10.length.field_1) + 256] = '0'
            mem[uint255(stor10.length.field_1) + 257] = '.json'
            mem[uint255(stor10.length.field_1) + 262] = 32
            mem[uint255(stor10.length.field_1) + 294] = mem[224]
            mem[uint255(stor10.length.field_1) + 326 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[uint255(stor10.length.field_1) + mem[224] + 326] = 0
            return Array(len=mem[224], data=mem[uint255(stor10.length.field_1) + 326 len ceil32(mem[224])])
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[256] = Mask(248, 8, stor10.length)
        else:
            if bool(stor10.length) != 1:
                mem[64] = 6
                _1617 = mem[224]
                mem[38] = mem[224]
                mem[70 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
                if ceil32(_1617) > _1617:
                    mem[_1617 + 70] = 0
                return 32, mem[38 len ceil32(_1617) + 32]
            idx = 0
            s = 0
            while idx < stor10.length.field_1 % 128:
                mem[idx + 256] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
        mem[stor10.length.field_1 % 128 + 256] = '0'
        mem[stor10.length.field_1 % 128 + 257] = '.json'
        mem[stor10.length.field_1 % 128 + 262] = 32
        mem[stor10.length.field_1 % 128 + 294] = mem[224]
        mem[stor10.length.field_1 % 128 + 326 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
        if ceil32(mem[224]) > mem[224]:
            mem[stor10.length.field_1 % 128 + mem[224] + 326] = 0
        return Array(len=mem[224], data=mem[stor10.length.field_1 % 128 + 326 len ceil32(mem[224])])
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
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s
        idx = arg1
        while idx:
            if t < 1:
                revert with 'NH{q', 17
            if 48 > -(idx % 10) - 1:
                revert with 'NH{q', 17
            if t - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        _1510 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1510] = 5
        mem[_1510 + 32] = '.json'
        _1511 = mem[64]
        if bool(stor10.length):
            if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
                revert with 'NH{q', 34
            if not bool(stor10.length):
                mem[mem[64] + 32] = Mask(248, 8, stor10.length)
                _1646 = mem[96]
                mem[mem[64] + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 32] = '.json'
                mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 37] = 0
                if ceil32(mem[96]) <= mem[96]:
                    _3562 = mem[64]
                    mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                    mem[_1511 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                    _3734 = mem[_3562]
                    mem[_1511 + uint255(stor10.length.field_1) + _1646 + 69] = mem[_3562]
                    mem[_1511 + uint255(stor10.length.field_1) + _1646 + 101 len ceil32(_3734)] = mem[_3562 + 32 len ceil32(_3734)]
                    if ceil32(_3734) > _3734:
                        mem[_1511 + uint255(stor10.length.field_1) + _1646 + _3734 + 101] = 0
                    return 32, mem[_1511 + uint255(stor10.length.field_1) + _1646 + 69 len ceil32(_3734) + 32]
                _3563 = mem[64]
                mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                mem[_1511 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                _3735 = mem[_3563]
                mem[_1511 + uint255(stor10.length.field_1) + _1646 + 69] = mem[_3563]
                mem[_1511 + uint255(stor10.length.field_1) + _1646 + 101 len ceil32(_3735)] = mem[_3563 + 32 len ceil32(_3735)]
                if ceil32(_3735) > _3735:
                    mem[_1511 + uint255(stor10.length.field_1) + _1646 + _3735 + 101] = 0
                return 32, mem[_1511 + uint255(stor10.length.field_1) + _1646 + 69 len ceil32(_3735) + 32]
            if bool(stor10.length) != 1:
                _1674 = mem[96]
                mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                mem[_1674] = '.json'
                mem[_1674 + 5] = 0
                if ceil32(_1674) <= _1674:
                    _3565 = mem[64]
                    mem[64] = _1674 + 5
                    mem[_1674 + 5] = 32
                    _3736 = mem[_3565]
                    mem[_1674 + 37] = mem[_3565]
                    mem[_1674 + 69 len ceil32(_3736)] = mem[_3565 + 32 len ceil32(_3736)]
                    if ceil32(_3736) > _3736:
                        mem[_1674 + _3736 + 69] = 0
                    return 32, mem[_1674 + 37 len ceil32(_3736) + 32]
                _3566 = mem[64]
                mem[64] = _1674 + 5
                mem[_1674 + 5] = 32
                _3737 = mem[_3566]
                mem[_1674 + 37] = mem[_3566]
                mem[_1674 + 69 len ceil32(_3737)] = mem[_3566 + 32 len ceil32(_3737)]
                if ceil32(_3737) > _3737:
                    mem[_1674 + _3737 + 69] = 0
                return 32, mem[_1674 + 37 len ceil32(_3737) + 32]
            mem[0] = 10
            idx = 0
            s = 0
            while idx < uint255(stor10.length.field_1):
                mem[_1511 + idx + 32] = stor10[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            _2614 = mem[96]
            mem[_1511 + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_2614) <= _2614:
                _3564 = mem[_1510]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + 32 len ceil32(mem[_1510])] = mem[_1510 + 32 len ceil32(mem[_1510])]
                if ceil32(_3564) <= _3564:
                    _4238 = mem[64]
                    mem[64] = _1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 32
                    mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 32] = 32
                    _4430 = mem[_4238]
                    mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 64] = mem[_4238]
                    mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 96 len ceil32(_4430)] = mem[_4238 + 32 len ceil32(_4430)]
                    if ceil32(_4430) > _4430:
                        mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + _4430 + 96] = 0
                    return 32, mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 64 len ceil32(_4430) + 32]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 32] = 0
                _4254 = mem[64]
                mem[64] = _1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 32
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 32] = 32
                _4446 = mem[_4254]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 64] = mem[_4254]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 96 len ceil32(_4446)] = mem[_4254 + 32 len ceil32(_4446)]
                if ceil32(_4446) > _4446:
                    mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + _4446 + 96] = 0
                return 32, mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3564 + 64 len ceil32(_4446) + 32]
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + 32] = 0
            _3612 = mem[_1510]
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + 32 len ceil32(mem[_1510])] = mem[_1510 + 32 len ceil32(mem[_1510])]
            if ceil32(_3612) <= _3612:
                _4239 = mem[64]
                mem[64] = _1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 32
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 32] = 32
                _4431 = mem[_4239]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 64] = mem[_4239]
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 96 len ceil32(_4431)] = mem[_4239 + 32 len ceil32(_4431)]
                if ceil32(_4431) > _4431:
                    mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + _4431 + 96] = 0
                return 32, mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 64 len ceil32(_4431) + 32]
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 32] = 0
            _4255 = mem[64]
            mem[64] = _1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 32
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 32] = 32
            _4447 = mem[_4255]
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 64] = mem[_4255]
            mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 96 len ceil32(_4447)] = mem[_4255 + 32 len ceil32(_4447)]
            if ceil32(_4447) > _4447:
                mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + _4447 + 96] = 0
            return 32, mem[_1511 + uint255(stor10.length.field_1) + _2614 + _3612 + 64 len ceil32(_4447) + 32]
        if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[mem[64] + 32] = Mask(248, 8, stor10.length)
            _1675 = mem[96]
            mem[mem[64] + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 32] = '.json'
            mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 37] = 0
            if ceil32(mem[96]) <= mem[96]:
                _3567 = mem[64]
                mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
                mem[_1511 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
                _3738 = mem[_3567]
                mem[_1511 + stor10.length.field_1 % 128 + _1675 + 69] = mem[_3567]
                mem[_1511 + stor10.length.field_1 % 128 + _1675 + 101 len ceil32(_3738)] = mem[_3567 + 32 len ceil32(_3738)]
                if ceil32(_3738) > _3738:
                    mem[_1511 + stor10.length.field_1 % 128 + _1675 + _3738 + 101] = 0
                return 32, mem[_1511 + stor10.length.field_1 % 128 + _1675 + 69 len ceil32(_3738) + 32]
            _3568 = mem[64]
            mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
            mem[_1511 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
            _3739 = mem[_3568]
            mem[_1511 + stor10.length.field_1 % 128 + _1675 + 69] = mem[_3568]
            mem[_1511 + stor10.length.field_1 % 128 + _1675 + 101 len ceil32(_3739)] = mem[_3568 + 32 len ceil32(_3739)]
            if ceil32(_3739) > _3739:
                mem[_1511 + stor10.length.field_1 % 128 + _1675 + _3739 + 101] = 0
            return 32, mem[_1511 + stor10.length.field_1 % 128 + _1675 + 69 len ceil32(_3739) + 32]
        if bool(stor10.length) != 1:
            _1696 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1696] = '.json'
            mem[_1696 + 5] = 0
            if ceil32(_1696) <= _1696:
                _3570 = mem[64]
                mem[64] = _1696 + 5
                mem[_1696 + 5] = 32
                _3740 = mem[_3570]
                mem[_1696 + 37] = mem[_3570]
                mem[_1696 + 69 len ceil32(_3740)] = mem[_3570 + 32 len ceil32(_3740)]
                if ceil32(_3740) > _3740:
                    mem[_1696 + _3740 + 69] = 0
                return 32, mem[_1696 + 37 len ceil32(_3740) + 32]
            _3571 = mem[64]
            mem[64] = _1696 + 5
            mem[_1696 + 5] = 32
            _3741 = mem[_3571]
            mem[_1696 + 37] = mem[_3571]
            mem[_1696 + 69 len ceil32(_3741)] = mem[_3571 + 32 len ceil32(_3741)]
            if ceil32(_3741) > _3741:
                mem[_1696 + _3741 + 69] = 0
            return 32, mem[_1696 + 37 len ceil32(_3741) + 32]
        mem[0] = 10
        idx = 0
        s = 0
        while idx < stor10.length.field_1 % 128:
            mem[_1511 + idx + 32] = stor10[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2615 = mem[96]
        mem[_1511 + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2615) <= _2615:
            _3569 = mem[_1510]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + 32 len ceil32(mem[_1510])] = mem[_1510 + 32 len ceil32(mem[_1510])]
            if ceil32(_3569) <= _3569:
                _4240 = mem[64]
                mem[64] = _1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 32
                mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 32] = 32
                _4432 = mem[_4240]
                mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 64] = mem[_4240]
                mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 96 len ceil32(_4432)] = mem[_4240 + 32 len ceil32(_4432)]
                if ceil32(_4432) > _4432:
                    mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + _4432 + 96] = 0
                return 32, mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 64 len ceil32(_4432) + 32]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 32] = 0
            _4256 = mem[64]
            mem[64] = _1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 32
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 32] = 32
            _4448 = mem[_4256]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 64] = mem[_4256]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 96 len ceil32(_4448)] = mem[_4256 + 32 len ceil32(_4448)]
            if ceil32(_4448) > _4448:
                mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + _4448 + 96] = 0
            return 32, mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3569 + 64 len ceil32(_4448) + 32]
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + 32] = 0
        _3617 = mem[_1510]
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + 32 len ceil32(mem[_1510])] = mem[_1510 + 32 len ceil32(mem[_1510])]
        if ceil32(_3617) <= _3617:
            _4241 = mem[64]
            mem[64] = _1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 32
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 32] = 32
            _4433 = mem[_4241]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 64] = mem[_4241]
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 96 len ceil32(_4433)] = mem[_4241 + 32 len ceil32(_4433)]
            if ceil32(_4433) > _4433:
                mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + _4433 + 96] = 0
            return 32, mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 64 len ceil32(_4433) + 32]
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 32] = 0
        _4257 = mem[64]
        mem[64] = _1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 32
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 32] = 32
        _4449 = mem[_4257]
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 64] = mem[_4257]
        mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 96 len ceil32(_4449)] = mem[_4257 + 32 len ceil32(_4449)]
        if ceil32(_4449) > _4449:
            mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + _4449 + 96] = 0
        return 32, mem[_1511 + stor10.length.field_1 % 128 + _2615 + _3617 + 64 len ceil32(_4449) + 32]
    mem[128 len s] = call.data[calldata.size len s]
    t = s
    idx = arg1
    while idx:
        if t < 1:
            revert with 'NH{q', 17
        if 48 > -(idx % 10) - 1:
            revert with 'NH{q', 17
        if t - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[t + 127 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    _1512 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1512] = 5
    mem[_1512 + 32] = '.json'
    _1513 = mem[64]
    if bool(stor10.length):
        if bool(stor10.length) == uint255(stor10.length.field_1) < 32:
            revert with 'NH{q', 34
        if not bool(stor10.length):
            mem[mem[64] + 32] = Mask(248, 8, stor10.length)
            _1647 = mem[96]
            mem[mem[64] + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 32] = '.json'
            mem[mem[64] + uint255(stor10.length.field_1) + mem[96] + 37] = 0
            if ceil32(mem[96]) <= mem[96]:
                _3572 = mem[64]
                mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
                mem[_1513 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
                _3742 = mem[_3572]
                mem[_1513 + uint255(stor10.length.field_1) + _1647 + 69] = mem[_3572]
                mem[_1513 + uint255(stor10.length.field_1) + _1647 + 101 len ceil32(_3742)] = mem[_3572 + 32 len ceil32(_3742)]
                if ceil32(_3742) > _3742:
                    mem[_1513 + uint255(stor10.length.field_1) + _1647 + _3742 + 101] = 0
                return 32, mem[_1513 + uint255(stor10.length.field_1) + _1647 + 69 len ceil32(_3742) + 32]
            _3573 = mem[64]
            mem[64] = mem[64] + uint255(stor10.length.field_1) + mem[96] + 37
            mem[_1513 + uint255(stor10.length.field_1) + mem[96] + 37] = 32
            _3743 = mem[_3573]
            mem[_1513 + uint255(stor10.length.field_1) + _1647 + 69] = mem[_3573]
            mem[_1513 + uint255(stor10.length.field_1) + _1647 + 101 len ceil32(_3743)] = mem[_3573 + 32 len ceil32(_3743)]
            if ceil32(_3743) > _3743:
                mem[_1513 + uint255(stor10.length.field_1) + _1647 + _3743 + 101] = 0
            return 32, mem[_1513 + uint255(stor10.length.field_1) + _1647 + 69 len ceil32(_3743) + 32]
        if bool(stor10.length) != 1:
            _1676 = mem[96]
            mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            mem[_1676] = '.json'
            mem[_1676 + 5] = 0
            if ceil32(_1676) <= _1676:
                _3575 = mem[64]
                mem[64] = _1676 + 5
                mem[_1676 + 5] = 32
                _3744 = mem[_3575]
                mem[_1676 + 37] = mem[_3575]
                mem[_1676 + 69 len ceil32(_3744)] = mem[_3575 + 32 len ceil32(_3744)]
                if ceil32(_3744) > _3744:
                    mem[_1676 + _3744 + 69] = 0
                return 32, mem[_1676 + 37 len ceil32(_3744) + 32]
            _3576 = mem[64]
            mem[64] = _1676 + 5
            mem[_1676 + 5] = 32
            _3745 = mem[_3576]
            mem[_1676 + 37] = mem[_3576]
            mem[_1676 + 69 len ceil32(_3745)] = mem[_3576 + 32 len ceil32(_3745)]
            if ceil32(_3745) > _3745:
                mem[_1676 + _3745 + 69] = 0
            return 32, mem[_1676 + 37 len ceil32(_3745) + 32]
        mem[0] = 10
        idx = 0
        s = 0
        while idx < uint255(stor10.length.field_1):
            mem[_1513 + idx + 32] = stor10[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        _2616 = mem[96]
        mem[_1513 + uint255(stor10.length.field_1) + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        if ceil32(_2616) <= _2616:
            _3574 = mem[_1512]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + 32 len ceil32(mem[_1512])] = mem[_1512 + 32 len ceil32(mem[_1512])]
            if ceil32(_3574) <= _3574:
                _4242 = mem[64]
                mem[64] = _1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 32
                mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 32] = 32
                _4434 = mem[_4242]
                mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 64] = mem[_4242]
                mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 96 len ceil32(_4434)] = mem[_4242 + 32 len ceil32(_4434)]
                if ceil32(_4434) > _4434:
                    mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + _4434 + 96] = 0
                return 32, mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 64 len ceil32(_4434) + 32]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 32] = 0
            _4258 = mem[64]
            mem[64] = _1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 32
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 32] = 32
            _4450 = mem[_4258]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 64] = mem[_4258]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 96 len ceil32(_4450)] = mem[_4258 + 32 len ceil32(_4450)]
            if ceil32(_4450) > _4450:
                mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + _4450 + 96] = 0
            return 32, mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3574 + 64 len ceil32(_4450) + 32]
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + 32] = 0
        _3622 = mem[_1512]
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + 32 len ceil32(mem[_1512])] = mem[_1512 + 32 len ceil32(mem[_1512])]
        if ceil32(_3622) <= _3622:
            _4243 = mem[64]
            mem[64] = _1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 32
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 32] = 32
            _4435 = mem[_4243]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 64] = mem[_4243]
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 96 len ceil32(_4435)] = mem[_4243 + 32 len ceil32(_4435)]
            if ceil32(_4435) > _4435:
                mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + _4435 + 96] = 0
            return 32, mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 64 len ceil32(_4435) + 32]
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 32] = 0
        _4259 = mem[64]
        mem[64] = _1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 32
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 32] = 32
        _4451 = mem[_4259]
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 64] = mem[_4259]
        mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 96 len ceil32(_4451)] = mem[_4259 + 32 len ceil32(_4451)]
        if ceil32(_4451) > _4451:
            mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + _4451 + 96] = 0
        return 32, mem[_1513 + uint255(stor10.length.field_1) + _2616 + _3622 + 64 len ceil32(_4451) + 32]
    if bool(stor10.length) == stor10.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if not bool(stor10.length):
        mem[mem[64] + 32] = Mask(248, 8, stor10.length)
        _1677 = mem[96]
        mem[mem[64] + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 32] = '.json'
        mem[mem[64] + stor10.length.field_1 % 128 + mem[96] + 37] = 0
        if ceil32(mem[96]) <= mem[96]:
            _3577 = mem[64]
            mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
            mem[_1513 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
            _3746 = mem[_3577]
            mem[_1513 + stor10.length.field_1 % 128 + _1677 + 69] = mem[_3577]
            mem[_1513 + stor10.length.field_1 % 128 + _1677 + 101 len ceil32(_3746)] = mem[_3577 + 32 len ceil32(_3746)]
            if ceil32(_3746) > _3746:
                mem[_1513 + stor10.length.field_1 % 128 + _1677 + _3746 + 101] = 0
            return 32, mem[_1513 + stor10.length.field_1 % 128 + _1677 + 69 len ceil32(_3746) + 32]
        _3578 = mem[64]
        mem[64] = mem[64] + stor10.length.field_1 % 128 + mem[96] + 37
        mem[_1513 + stor10.length.field_1 % 128 + mem[96] + 37] = 32
        _3747 = mem[_3578]
        mem[_1513 + stor10.length.field_1 % 128 + _1677 + 69] = mem[_3578]
        mem[_1513 + stor10.length.field_1 % 128 + _1677 + 101 len ceil32(_3747)] = mem[_3578 + 32 len ceil32(_3747)]
        if ceil32(_3747) > _3747:
            mem[_1513 + stor10.length.field_1 % 128 + _1677 + _3747 + 101] = 0
        return 32, mem[_1513 + stor10.length.field_1 % 128 + _1677 + 69 len ceil32(_3747) + 32]
    if bool(stor10.length) != 1:
        _1697 = mem[96]
        mem[0 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
        mem[_1697] = '.json'
        mem[_1697 + 5] = 0
        if ceil32(_1697) <= _1697:
            _3580 = mem[64]
            mem[64] = _1697 + 5
            mem[_1697 + 5] = 32
            _3748 = mem[_3580]
            mem[_1697 + 37] = mem[_3580]
            mem[_1697 + 69 len ceil32(_3748)] = mem[_3580 + 32 len ceil32(_3748)]
            if ceil32(_3748) > _3748:
                mem[_1697 + _3748 + 69] = 0
            return 32, mem[_1697 + 37 len ceil32(_3748) + 32]
        _3581 = mem[64]
        mem[64] = _1697 + 5
        mem[_1697 + 5] = 32
        _3749 = mem[_3581]
        mem[_1697 + 37] = mem[_3581]
        mem[_1697 + 69 len ceil32(_3749)] = mem[_3581 + 32 len ceil32(_3749)]
        if ceil32(_3749) > _3749:
            mem[_1697 + _3749 + 69] = 0
        return 32, mem[_1697 + 37 len ceil32(_3749) + 32]
    mem[0] = 10
    idx = 0
    s = 0
    while idx < stor10.length.field_1 % 128:
        mem[_1513 + idx + 32] = stor10[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    _2617 = mem[96]
    mem[_1513 + stor10.length.field_1 % 128 + 32 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_2617) <= _2617:
        _3579 = mem[_1512]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + 32 len ceil32(mem[_1512])] = mem[_1512 + 32 len ceil32(mem[_1512])]
        if ceil32(_3579) <= _3579:
            _4244 = mem[64]
            mem[64] = _1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 32
            mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 32] = 32
            _4436 = mem[_4244]
            mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 64] = mem[_4244]
            mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 96 len ceil32(_4436)] = mem[_4244 + 32 len ceil32(_4436)]
            if ceil32(_4436) > _4436:
                mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + _4436 + 96] = 0
            return 32, mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 64 len ceil32(_4436) + 32]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 32] = 0
        _4260 = mem[64]
        mem[64] = _1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 32
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 32] = 32
        _4452 = mem[_4260]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 64] = mem[_4260]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 96 len ceil32(_4452)] = mem[_4260 + 32 len ceil32(_4452)]
        if ceil32(_4452) > _4452:
            mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + _4452 + 96] = 0
        return 32, mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3579 + 64 len ceil32(_4452) + 32]
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + 32] = 0
    _3627 = mem[_1512]
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + 32 len ceil32(mem[_1512])] = mem[_1512 + 32 len ceil32(mem[_1512])]
    if ceil32(_3627) <= _3627:
        _4245 = mem[64]
        mem[64] = _1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 32
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 32] = 32
        _4437 = mem[_4245]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 64] = mem[_4245]
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 96 len ceil32(_4437)] = mem[_4245 + 32 len ceil32(_4437)]
        if ceil32(_4437) > _4437:
            mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + _4437 + 96] = 0
        return 32, mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 64 len ceil32(_4437) + 32]
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 32] = 0
    _4261 = mem[64]
    mem[64] = _1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 32
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 32] = 32
    _4453 = mem[_4261]
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 64] = mem[_4261]
    mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 96 len ceil32(_4453)] = mem[_4261 + 32 len ceil32(_4453)]
    if ceil32(_4453) > _4453:
        mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + _4453 + 96] = 0
    return 32, mem[_1513 + stor10.length.field_1 % 128 + _2617 + _3627 + 64 len ceil32(_4453) + 32]
}



}
