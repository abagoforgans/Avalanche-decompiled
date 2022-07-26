contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - tokenURI(uint256 arg1)
#  - register(string arg1)
#
array of uint256 stor1;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
mapping of struct stor151;
address owner;
uint8 paused;
uint256 sub_4b2b363c;
array of struct stor302;
uint256 sub_2e53d474;
uint256 sub_d383d9bb;
uint256 sub_f1a837d0;
uint256 sub_77045269;
address paymentReceiverAddress;
array of struct stor308;
array of struct stor309;
array of struct stor310;
array of struct stor311;
array of struct stor312;
array of struct stor313;
array of struct stor314;
array of struct stor315;
array of struct stor316;
array of struct stor317;
array of uint256 stor318;
array of uint256 stor319;
array of struct stor320;
array of struct stor321;
array of struct stor322;
array of struct stor323;
array of struct stor324;
array of struct stor325;
array of struct stor326;
array of struct stor327;
array of struct stor328;
array of struct stor329;
array of uint256 stor330;
array of uint256 stor331;
mapping of struct stor332;
mapping of struct stor333;
mapping of struct stor334;
mapping of struct stor335;
mapping of struct stor336;
mapping of address address;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_26449235(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address[arg1[all]]
}

function sub_2e53d474(?) {
    return sub_2e53d474
}

function sub_4b2b363c(?) {
    return sub_4b2b363c
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

function sub_77045269(?) {
    return sub_77045269
}

function owner() {
    return owner
}

function getAddress(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return address[arg1[all]]
}

function paymentReceiver() {
    return paymentReceiverAddress
}

function sub_d383d9bb(?) {
    return sub_d383d9bb
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function sub_f1a837d0(?) {
    return sub_f1a837d0
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

function sub_4ccaa77d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e53d474 = arg1
}

function sub_4ee046ab(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d383d9bb = arg1
}

function sub_73a39d50(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2e53d474 = arg1
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_1eadd110(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentReceiverAddress = address(arg1)
    return address(arg1)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw funds'
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if not arg1 - ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_46999fc8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor319.length):
        if not bool(stor319.length) - (uint255(stor319.length) * 0.5 < 32):
            revert with 0, 34
        if arg1.length:
            stor319[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor319.length = 0
            idx = 0
            while (uint255(stor319.length) * 0.5) + 31 / 32 > idx:
                stor319[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor319.length) - (stor319.length.field_1 < 32):
            revert with 0, 34
        if arg1.length:
            stor319[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor319.length = 0
            idx = 0
            while stor319.length.field_1 + 31 / 32 > idx:
                stor319[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_6a5e4294(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor318.length):
        if not bool(stor318.length) - (uint255(stor318.length) * 0.5 < 32):
            revert with 0, 34
        if arg1.length:
            stor318[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor318.length = 0
            idx = 0
            while (uint255(stor318.length) * 0.5) + 31 / 32 > idx:
                stor318[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor318.length) - (stor318.length.field_1 < 32):
            revert with 0, 34
        if arg1.length:
            stor318[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor318.length = 0
            idx = 0
            while stor318.length.field_1 + 31 / 32 > idx:
                stor318[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_035e4997(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if address[arg1[all]] != msg.sender:
        revert with 2192845056
    if stor335[arg1[all]].field_0:
        if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if arg2.length:
            stor335[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor335[arg1[all]].field_0 = 0
            idx = 0
            while (uint255(stor335[arg1[all]].field_0) * 0.5) + 31 / 32 > idx:
                stor335[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
            revert with 0, 34
        if arg2.length:
            stor335[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor335[arg1[all]].field_0 = 0
            idx = 0
            while stor335[arg1[all]].field_1 + 31 / 32 > idx:
                stor335[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_c134c976(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if address[arg1[all]] != msg.sender:
        revert with 2192845056
    if stor334[arg1[all]].field_0:
        if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if arg2.length:
            stor334[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor334[arg1[all]].field_0 = 0
            idx = 0
            while (uint255(stor334[arg1[all]].field_0) * 0.5) + 31 / 32 > idx:
                stor334[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
            revert with 0, 34
        if arg2.length:
            stor334[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor334[arg1[all]].field_0 = 0
            idx = 0
            while stor334[arg1[all]].field_1 + 31 / 32 > idx:
                stor334[arg1[all]][idx].field_0 = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
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

function sub_8aee6bf1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor331.length):
        if not bool(stor331.length) - (uint255(stor331.length) * 0.5 < 32):
            revert with 0, 34
        if not ('cd', 4).length:
            stor331.length = 0
            idx = 0
            while (uint255(stor331.length) * 0.5) + 31 / 32 > idx:
                stor331[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor331.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor331[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor331.length) * 0.5) + 31 / 32 > idx:
                stor331[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor331.length) - (stor331.length.field_1 < 32):
            revert with 0, 34
        if not ('cd', 4).length:
            stor331.length = 0
            idx = 0
            while stor331.length.field_1 + 31 / 32 > idx:
                stor331[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor331.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor331[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor331.length.field_1 + 31 / 32 > idx:
                stor331[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d6fd54f1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor330.length):
        if not bool(stor330.length) - (uint255(stor330.length) * 0.5 < 32):
            revert with 0, 34
        if not ('cd', 4).length:
            stor330.length = 0
            idx = 0
            while (uint255(stor330.length) * 0.5) + 31 / 32 > idx:
                stor330[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor330.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor330[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while (uint255(stor330.length) * 0.5) + 31 / 32 > idx:
                stor330[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not bool(stor330.length) - (stor330.length.field_1 < 32):
            revert with 0, 34
        if not ('cd', 4).length:
            stor330.length = 0
            idx = 0
            while stor330.length.field_1 + 31 / 32 > idx:
                stor330[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor330.length = (2 * ('cd', 4).length) + 1
            s = 0
            idx = cd[4] + 36
            while cd[4] + ('cd', 4).length + 36 > idx:
                stor330[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
            while stor330.length.field_1 + 31 / 32 > idx:
                stor330[idx].field_0 = 0
                idx = idx + 1
                continue 
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function price(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    require s > 0
    if s <= 2:
        mem[ceil32(arg1.length) + 128] = sub_2e53d474
    else:
        if s > 5:
            mem[ceil32(arg1.length) + 128] = sub_f1a837d0
        else:
            mem[ceil32(arg1.length) + 128] = sub_d383d9bb
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if paused:
        revert with 0, 'Pausable: paused'
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not -arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function safeMint(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4b2b363c++
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor301]:
        revert with 0, 'ERC721: token already minted'
    if paused:
        revert with 0, 'Pausable: paused'
    if balanceOf[address(arg1)] > -2:
        revert with 0, 17
    balanceOf[address(arg1)]++
    ownerOf[stor301] = arg1
    emit Transfer(0, arg1, sub_4b2b363c);
    if ext_code.size(arg1):
        call arg1.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, sub_4b2b363c, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not -arg2.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg2[all]
            if not -return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    if not ownerOf[stor301]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if stor151[stor301].field_0:
        if not stor151[stor301].field_0 - (uint255(stor151[stor301].field_0) * 0.5 < 32):
            revert with 0, 34
        if arg2.length:
            stor151[stor301][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor151[stor301].field_0 = 0
            idx = 0
            while (uint255(stor151[stor301].field_0) * 0.5) + 31 / 32 > idx:
                stor151[stor301][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor151[stor301].field_0 - (stor151[stor301].field_1 < 32):
            revert with 0, 34
        if arg2.length:
            stor151[stor301][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor151[stor301].field_0 = 0
            idx = 0
            while stor151[stor301].field_1 + 31 / 32 > idx:
                stor151[stor301][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_c1880a98(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if address[call.data[cd[4] + 36 len ('cd', 4).length]] != msg.sender:
        revert with 2192845056
    if stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0:
        if not stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 - (uint255(stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) * 0.5 < 32):
            revert with 0, 34
        if not ('cd', 36).length:
            stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 = 0
            idx = 0
            while (uint255(stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) * 0.5) + 31 / 32 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0) * 0.5) + 31 / 32 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 - (stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_1 < 32):
            revert with 0, 34
        if not ('cd', 36).length:
            stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 = 0
            idx = 0
            while stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_1 + 31 / 32 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor333[call.data[cd[4] + 36 len ('cd', 4).length]].field_1 + 31 / 32 > idx:
                stor333[call.data[cd[4] + 36 len ('cd', 4).length]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_9410b47a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 334
    if stor334[arg1[all]].field_0:
        if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor334[arg1[all]].field_0:
            if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor334[arg1[all]].field_0):
                if 31 >= uint255(stor334[arg1[all]].field_0) * 0.5:
                    mem[128] = 256 * stor334[arg1[all]].field_8
                else:
                    mem[128] = stor334[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor334[arg1[all]].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor334[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor334[arg1[all]].field_1:
                if 31 >= stor334[arg1[all]].field_1:
                    mem[128] = 256 * stor334[arg1[all]].field_8
                else:
                    mem[128] = stor334[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while stor334[arg1[all]].field_1 + 96 > idx:
                        mem[idx + 32] = stor334[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor334[arg1[all]].field_0), data=mem[128 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)]), 
    if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor334[arg1[all]].field_0:
        if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor334[arg1[all]].field_0):
            if 31 >= uint255(stor334[arg1[all]].field_0) * 0.5:
                mem[128] = 256 * stor334[arg1[all]].field_8
            else:
                mem[128] = stor334[arg1[all]].field_0
                idx = 128
                s = 0
                while (uint255(stor334[arg1[all]].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor334[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor334[arg1[all]].field_1:
            if 31 >= stor334[arg1[all]].field_1:
                mem[128] = 256 * stor334[arg1[all]].field_8
            else:
                mem[128] = stor334[arg1[all]].field_0
                idx = 128
                s = 0
                while stor334[arg1[all]].field_1 + 96 > idx:
                    mem[idx + 32] = stor334[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor334[arg1[all]].field_0, data=mem[128 len ceil32(stor334[arg1[all]].field_1)])
}

function sub_b6da7f99(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 335
    if stor335[arg1[all]].field_0:
        if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor335[arg1[all]].field_0:
            if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor335[arg1[all]].field_0):
                if 31 >= uint255(stor335[arg1[all]].field_0) * 0.5:
                    mem[128] = 256 * stor335[arg1[all]].field_8
                else:
                    mem[128] = stor335[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor335[arg1[all]].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor335[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor335[arg1[all]].field_1:
                if 31 >= stor335[arg1[all]].field_1:
                    mem[128] = 256 * stor335[arg1[all]].field_8
                else:
                    mem[128] = stor335[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while stor335[arg1[all]].field_1 + 96 > idx:
                        mem[idx + 32] = stor335[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor335[arg1[all]].field_0), data=mem[128 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)]), 
    if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor335[arg1[all]].field_0:
        if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor335[arg1[all]].field_0):
            if 31 >= uint255(stor335[arg1[all]].field_0) * 0.5:
                mem[128] = 256 * stor335[arg1[all]].field_8
            else:
                mem[128] = stor335[arg1[all]].field_0
                idx = 128
                s = 0
                while (uint255(stor335[arg1[all]].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor335[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor335[arg1[all]].field_1:
            if 31 >= stor335[arg1[all]].field_1:
                mem[128] = 256 * stor335[arg1[all]].field_8
            else:
                mem[128] = stor335[arg1[all]].field_0
                idx = 128
                s = 0
                while stor335[arg1[all]].field_1 + 96 > idx:
                    mem[idx + 32] = stor335[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor335[arg1[all]].field_0, data=mem[128 len ceil32(stor335[arg1[all]].field_1)])
}

function getText(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 336
    if stor336[arg1[all]].field_0:
        if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor336[arg1[all]].field_0:
            if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor336[arg1[all]].field_0):
                if 31 >= uint255(stor336[arg1[all]].field_0) * 0.5:
                    mem[128] = 256 * stor336[arg1[all]].field_8
                else:
                    mem[128] = stor336[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor336[arg1[all]].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor336[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor336[arg1[all]].field_1:
                if 31 >= stor336[arg1[all]].field_1:
                    mem[128] = 256 * stor336[arg1[all]].field_8
                else:
                    mem[128] = stor336[arg1[all]].field_0
                    idx = 128
                    s = 0
                    while stor336[arg1[all]].field_1 + 96 > idx:
                        mem[idx + 32] = stor336[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor336[arg1[all]].field_0), data=mem[128 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)]), 
    if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor336[arg1[all]].field_0:
        if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor336[arg1[all]].field_0):
            if 31 >= uint255(stor336[arg1[all]].field_0) * 0.5:
                mem[128] = 256 * stor336[arg1[all]].field_8
            else:
                mem[128] = stor336[arg1[all]].field_0
                idx = 128
                s = 0
                while (uint255(stor336[arg1[all]].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor336[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor336[arg1[all]].field_1:
            if 31 >= stor336[arg1[all]].field_1:
                mem[128] = 256 * stor336[arg1[all]].field_8
            else:
                mem[128] = stor336[arg1[all]].field_0
                idx = 128
                s = 0
                while stor336[arg1[all]].field_1 + 96 > idx:
                    mem[idx + 32] = stor336[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor336[arg1[all]].field_0, data=mem[128 len ceil32(stor336[arg1[all]].field_1)])
}

function tld() {
    if bool(stor302.length):
        if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor302.length):
            if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor302.length):
                if 31 < uint255(stor302.length) * 0.5:
                    mem[128] = uint256(stor302.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor302.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor302[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)])
                mem[128] = 256 * stor302.length.field_8
        else:
            if not bool(stor302.length) - (stor302.length.field_1 < 32):
                revert with 0, 34
            if stor302.length.field_1:
                if 31 < stor302.length.field_1:
                    mem[128] = uint256(stor302.field_0)
                    idx = 128
                    s = 0
                    while stor302.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor302[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)])
                mem[128] = 256 * stor302.length.field_8
        mem[ceil32(uint255(stor302.length) * 0.5) + 192 len ceil32(uint255(stor302.length) * 0.5)] = mem[128 len ceil32(uint255(stor302.length) * 0.5)]
        if ceil32(uint255(stor302.length) * 0.5) > uint255(stor302.length) * 0.5:
            mem[(uint255(stor302.length) * 0.5) + ceil32(uint255(stor302.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)], mem[(2 * ceil32(uint255(stor302.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor302.length) * 0.5)]), 
    if not bool(stor302.length) - (stor302.length.field_1 < 32):
        revert with 0, 34
    if bool(stor302.length):
        if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor302.length):
            if 31 < uint255(stor302.length) * 0.5:
                mem[128] = uint256(stor302.field_0)
                idx = 128
                s = 0
                while (uint255(stor302.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor302[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)])
            mem[128] = 256 * stor302.length.field_8
    else:
        if not bool(stor302.length) - (stor302.length.field_1 < 32):
            revert with 0, 34
        if stor302.length.field_1:
            if 31 < stor302.length.field_1:
                mem[128] = uint256(stor302.field_0)
                idx = 128
                s = 0
                while stor302.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor302[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)])
            mem[128] = 256 * stor302.length.field_8
    mem[ceil32(stor302.length.field_1) + 192 len ceil32(stor302.length.field_1)] = mem[128 len ceil32(stor302.length.field_1)]
    if ceil32(stor302.length.field_1) > stor302.length.field_1:
        mem[stor302.length.field_1 + ceil32(stor302.length.field_1) + 192] = 0
    return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)], mem[(2 * ceil32(stor302.length.field_1)) + 192 len 2 * ceil32(stor302.length.field_1)]), 
}

function name() {
    if bool(stor101.length):
        if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor101.length):
            if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if not bool(stor101.length) - (stor101.length.field_1 < 32):
                revert with 0, 34
            if stor101.length.field_1:
                if 31 < stor101.length.field_1:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if not bool(stor101.length) - (stor101.length.field_1 < 32):
        revert with 0, 34
    if bool(stor101.length):
        if not bool(stor101.length) - (uint255(stor101.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    else:
        if not bool(stor101.length) - (stor101.length.field_1 < 32):
            revert with 0, 34
        if stor101.length.field_1:
            if 31 < stor101.length.field_1:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)])
            mem[128] = 256 * stor101.length.field_8
    mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
    if ceil32(stor101.length.field_1) > stor101.length.field_1:
        mem[stor101.length.field_1 + ceil32(stor101.length.field_1) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() {
    if bool(stor102.length):
        if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor102.length):
            if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if not bool(stor102.length) - (stor102.length.field_1 < 32):
                revert with 0, 34
            if stor102.length.field_1:
                if 31 < stor102.length.field_1:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if not bool(stor102.length) - (stor102.length.field_1 < 32):
        revert with 0, 34
    if bool(stor102.length):
        if not bool(stor102.length) - (uint255(stor102.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    else:
        if not bool(stor102.length) - (stor102.length.field_1 < 32):
            revert with 0, 34
        if stor102.length.field_1:
            if 31 < stor102.length.field_1:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)])
            mem[128] = 256 * stor102.length.field_8
    mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
    if ceil32(stor102.length.field_1) > stor102.length.field_1:
        mem[stor102.length.field_1 + ceil32(stor102.length.field_1) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function sub_8f55ee79(?) {
    if bool(stor302.length):
        if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor302.length):
            if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor302.length):
                if 31 < uint255(stor302.length) * 0.5:
                    mem[128] = uint256(stor302.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor302.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor302[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)])
                mem[128] = 256 * stor302.length.field_8
        else:
            if not bool(stor302.length) - (stor302.length.field_1 < 32):
                revert with 0, 34
            if stor302.length.field_1:
                if 31 < stor302.length.field_1:
                    mem[128] = uint256(stor302.field_0)
                    idx = 128
                    s = 0
                    while stor302.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor302[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)])
                mem[128] = 256 * stor302.length.field_8
        mem[ceil32(uint255(stor302.length) * 0.5) + 192 len ceil32(uint255(stor302.length) * 0.5)] = mem[128 len ceil32(uint255(stor302.length) * 0.5)]
        if ceil32(uint255(stor302.length) * 0.5) > uint255(stor302.length) * 0.5:
            mem[(uint255(stor302.length) * 0.5) + ceil32(uint255(stor302.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor302.length), data=mem[128 len ceil32(uint255(stor302.length) * 0.5)], mem[(2 * ceil32(uint255(stor302.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor302.length) * 0.5)]), 
    if not bool(stor302.length) - (stor302.length.field_1 < 32):
        revert with 0, 34
    if bool(stor302.length):
        if not bool(stor302.length) - (uint255(stor302.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor302.length):
            if 31 < uint255(stor302.length) * 0.5:
                mem[128] = uint256(stor302.field_0)
                idx = 128
                s = 0
                while (uint255(stor302.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor302[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)])
            mem[128] = 256 * stor302.length.field_8
    else:
        if not bool(stor302.length) - (stor302.length.field_1 < 32):
            revert with 0, 34
        if stor302.length.field_1:
            if 31 < stor302.length.field_1:
                mem[128] = uint256(stor302.field_0)
                idx = 128
                s = 0
                while stor302.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor302[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)])
            mem[128] = 256 * stor302.length.field_8
    mem[ceil32(stor302.length.field_1) + 192 len ceil32(stor302.length.field_1)] = mem[128 len ceil32(stor302.length.field_1)]
    if ceil32(stor302.length.field_1) > stor302.length.field_1:
        mem[stor302.length.field_1 + ceil32(stor302.length.field_1) + 192] = 0
    return Array(len=stor302.length % 128, data=mem[128 len ceil32(stor302.length.field_1)], mem[(2 * ceil32(stor302.length.field_1)) + 192 len 2 * ceil32(stor302.length.field_1)]), 
}

function names(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor332[arg1].field_0:
        if not stor332[arg1].field_0 - (uint255(stor332[arg1].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor332[arg1].field_0:
            if not stor332[arg1].field_0 - (uint255(stor332[arg1].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor332[arg1].field_0):
                if 31 < uint255(stor332[arg1].field_0) * 0.5:
                    mem[128] = stor332[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor332[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor332[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor332[arg1].field_0), data=mem[128 len ceil32(uint255(stor332[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor332[arg1].field_8
        else:
            if not stor332[arg1].field_0 - (stor332[arg1].field_1 < 32):
                revert with 0, 34
            if stor332[arg1].field_1:
                if 31 < stor332[arg1].field_1:
                    mem[128] = stor332[arg1].field_0
                    idx = 128
                    s = 0
                    while stor332[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor332[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor332[arg1].field_0), data=mem[128 len ceil32(uint255(stor332[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor332[arg1].field_8
        mem[ceil32(uint255(stor332[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor332[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor332[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor332[arg1].field_0) * 0.5) > uint255(stor332[arg1].field_0) * 0.5:
            mem[(uint255(stor332[arg1].field_0) * 0.5) + ceil32(uint255(stor332[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor332[arg1].field_0), data=mem[128 len ceil32(uint255(stor332[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor332[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor332[arg1].field_0) * 0.5)]), 
    if not stor332[arg1].field_0 - (stor332[arg1].field_1 < 32):
        revert with 0, 34
    if stor332[arg1].field_0:
        if not stor332[arg1].field_0 - (uint255(stor332[arg1].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor332[arg1].field_0):
            if 31 < uint255(stor332[arg1].field_0) * 0.5:
                mem[128] = stor332[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor332[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor332[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor332[arg1].field_0, data=mem[128 len ceil32(stor332[arg1].field_1)])
            mem[128] = 256 * stor332[arg1].field_8
    else:
        if not stor332[arg1].field_0 - (stor332[arg1].field_1 < 32):
            revert with 0, 34
        if stor332[arg1].field_1:
            if 31 < stor332[arg1].field_1:
                mem[128] = stor332[arg1].field_0
                idx = 128
                s = 0
                while stor332[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor332[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor332[arg1].field_0, data=mem[128 len ceil32(stor332[arg1].field_1)])
            mem[128] = 256 * stor332[arg1].field_8
    mem[ceil32(stor332[arg1].field_1) + 192 len ceil32(stor332[arg1].field_1)] = mem[128 len ceil32(stor332[arg1].field_1)]
    if ceil32(stor332[arg1].field_1) > stor332[arg1].field_1:
        mem[stor332[arg1].field_1 + ceil32(stor332[arg1].field_1) + 192] = 0
    return Array(len=stor332[arg1].field_0, data=mem[128 len ceil32(stor332[arg1].field_1)], mem[(2 * ceil32(stor332[arg1].field_1)) + 192 len 2 * ceil32(stor332[arg1].field_1)]), 
}

function valid(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    if s < 1:
        mem[ceil32(arg1.length) + 128] = s >= 1
        return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 160] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg1.length) + 160]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    return s <= 10
}

function sub_578a1a92(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if stor334[arg1[all]].field_0:
        if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor334[arg1[all]].field_0:
            if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor334[arg1[all]].field_0):
                if 31 < uint255(stor334[arg1[all]].field_0) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor334[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor334[arg1[all]].field_0) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor334[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor334[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor334[arg1[all]].field_8
        else:
            if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor334[arg1[all]].field_1:
                if 31 < stor334[arg1[all]].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor334[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor334[arg1[all]].field_1 + 97 > idx:
                        mem[idx + 32] = stor334[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor334[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor334[arg1[all]].field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor334[arg1[all]].field_0) * 0.5) + 193 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)]
        if ceil32(uint255(stor334[arg1[all]].field_0) * 0.5) > uint255(stor334[arg1[all]].field_0) * 0.5:
            mem[(uint255(stor334[arg1[all]].field_0) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor334[arg1[all]].field_0) * 0.5) + 193] = 0
        return Array(len=2 * Mask(256, -1, stor334[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)) + 193 len 2 * ceil32(uint255(stor334[arg1[all]].field_0) * 0.5)]), 
    if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor334[arg1[all]].field_0:
        if not stor334[arg1[all]].field_0 - (uint255(stor334[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor334[arg1[all]].field_0):
            if 31 < uint255(stor334[arg1[all]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor334[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor334[arg1[all]].field_0) * 0.5) + 97 > idx:
                    mem[idx + 32] = stor334[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor334[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor334[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor334[arg1[all]].field_8
    else:
        if not stor334[arg1[all]].field_0 - (stor334[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor334[arg1[all]].field_1:
            if 31 < stor334[arg1[all]].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor334[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor334[arg1[all]].field_1 + 97 > idx:
                    mem[idx + 32] = stor334[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor334[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor334[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor334[arg1[all]].field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor334[arg1[all]].field_1) + 193 len ceil32(stor334[arg1[all]].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor334[arg1[all]].field_1)]
    if ceil32(stor334[arg1[all]].field_1) > stor334[arg1[all]].field_1:
        mem[stor334[arg1[all]].field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor334[arg1[all]].field_1) + 193] = 0
    return Array(len=stor334[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor334[arg1[all]].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor334[arg1[all]].field_1)) + 193 len 2 * ceil32(stor334[arg1[all]].field_1)]), 
}

function sub_77c4e831(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if stor335[arg1[all]].field_0:
        if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor335[arg1[all]].field_0:
            if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor335[arg1[all]].field_0):
                if 31 < uint255(stor335[arg1[all]].field_0) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor335[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor335[arg1[all]].field_0) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor335[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor335[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor335[arg1[all]].field_8
        else:
            if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor335[arg1[all]].field_1:
                if 31 < stor335[arg1[all]].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor335[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor335[arg1[all]].field_1 + 97 > idx:
                        mem[idx + 32] = stor335[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor335[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor335[arg1[all]].field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor335[arg1[all]].field_0) * 0.5) + 193 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)]
        if ceil32(uint255(stor335[arg1[all]].field_0) * 0.5) > uint255(stor335[arg1[all]].field_0) * 0.5:
            mem[(uint255(stor335[arg1[all]].field_0) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor335[arg1[all]].field_0) * 0.5) + 193] = 0
        return Array(len=2 * Mask(256, -1, stor335[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)) + 193 len 2 * ceil32(uint255(stor335[arg1[all]].field_0) * 0.5)]), 
    if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor335[arg1[all]].field_0:
        if not stor335[arg1[all]].field_0 - (uint255(stor335[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor335[arg1[all]].field_0):
            if 31 < uint255(stor335[arg1[all]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor335[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor335[arg1[all]].field_0) * 0.5) + 97 > idx:
                    mem[idx + 32] = stor335[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor335[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor335[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor335[arg1[all]].field_8
    else:
        if not stor335[arg1[all]].field_0 - (stor335[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor335[arg1[all]].field_1:
            if 31 < stor335[arg1[all]].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor335[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor335[arg1[all]].field_1 + 97 > idx:
                    mem[idx + 32] = stor335[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor335[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor335[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor335[arg1[all]].field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor335[arg1[all]].field_1) + 193 len ceil32(stor335[arg1[all]].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor335[arg1[all]].field_1)]
    if ceil32(stor335[arg1[all]].field_1) > stor335[arg1[all]].field_1:
        mem[stor335[arg1[all]].field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor335[arg1[all]].field_1) + 193] = 0
    return Array(len=stor335[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor335[arg1[all]].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor335[arg1[all]].field_1)) + 193 len 2 * ceil32(stor335[arg1[all]].field_1)]), 
}

function text(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if stor336[arg1[all]].field_0:
        if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor336[arg1[all]].field_0:
            if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor336[arg1[all]].field_0):
                if 31 < uint255(stor336[arg1[all]].field_0) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor336[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor336[arg1[all]].field_0) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor336[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor336[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor336[arg1[all]].field_8
        else:
            if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor336[arg1[all]].field_1:
                if 31 < stor336[arg1[all]].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor336[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor336[arg1[all]].field_1 + 97 > idx:
                        mem[idx + 32] = stor336[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor336[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor336[arg1[all]].field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor336[arg1[all]].field_0) * 0.5) + 193 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)]
        if ceil32(uint255(stor336[arg1[all]].field_0) * 0.5) > uint255(stor336[arg1[all]].field_0) * 0.5:
            mem[(uint255(stor336[arg1[all]].field_0) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor336[arg1[all]].field_0) * 0.5) + 193] = 0
        return Array(len=2 * Mask(256, -1, stor336[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)) + 193 len 2 * ceil32(uint255(stor336[arg1[all]].field_0) * 0.5)]), 
    if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor336[arg1[all]].field_0:
        if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor336[arg1[all]].field_0):
            if 31 < uint255(stor336[arg1[all]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor336[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor336[arg1[all]].field_0) * 0.5) + 97 > idx:
                    mem[idx + 32] = stor336[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor336[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor336[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor336[arg1[all]].field_8
    else:
        if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor336[arg1[all]].field_1:
            if 31 < stor336[arg1[all]].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor336[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor336[arg1[all]].field_1 + 97 > idx:
                    mem[idx + 32] = stor336[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor336[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor336[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor336[arg1[all]].field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor336[arg1[all]].field_1) + 193 len ceil32(stor336[arg1[all]].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor336[arg1[all]].field_1)]
    if ceil32(stor336[arg1[all]].field_1) > stor336[arg1[all]].field_1:
        mem[stor336[arg1[all]].field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor336[arg1[all]].field_1) + 193] = 0
    return Array(len=stor336[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor336[arg1[all]].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor336[arg1[all]].field_1)) + 193 len 2 * ceil32(stor336[arg1[all]].field_1)]), 
}

function records(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[arg1.length + 128] = 0
    if stor333[arg1[all]].field_0:
        if not stor333[arg1[all]].field_0 - (uint255(stor333[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if stor333[arg1[all]].field_0:
            if not stor333[arg1[all]].field_0 - (uint255(stor333[arg1[all]].field_0) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor333[arg1[all]].field_0):
                if 31 < uint255(stor333[arg1[all]].field_0) * 0.5:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor333[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + (uint255(stor333[arg1[all]].field_0) * 0.5) + 97 > idx:
                        mem[idx + 32] = stor333[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor333[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor333[arg1[all]].field_8
        else:
            if not stor333[arg1[all]].field_0 - (stor333[arg1[all]].field_1 < 32):
                revert with 0, 34
            if stor333[arg1[all]].field_1:
                if 31 < stor333[arg1[all]].field_1:
                    mem[ceil32(ceil32(arg1.length)) + 129] = stor333[arg1[all]].field_0
                    idx = ceil32(ceil32(arg1.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg1.length)) + stor333[arg1[all]].field_1 + 97 > idx:
                        mem[idx + 32] = stor333[arg1[all]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor333[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)]), 
                mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor333[arg1[all]].field_8
        mem[ceil32(ceil32(arg1.length)) + ceil32(uint255(stor333[arg1[all]].field_0) * 0.5) + 193 len ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)]
        if ceil32(uint255(stor333[arg1[all]].field_0) * 0.5) > uint255(stor333[arg1[all]].field_0) * 0.5:
            mem[(uint255(stor333[arg1[all]].field_0) * 0.5) + ceil32(ceil32(arg1.length)) + ceil32(uint255(stor333[arg1[all]].field_0) * 0.5) + 193] = 0
        return Array(len=2 * Mask(256, -1, stor333[arg1[all]].field_0), data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)) + 193 len 2 * ceil32(uint255(stor333[arg1[all]].field_0) * 0.5)]), 
    if not stor333[arg1[all]].field_0 - (stor333[arg1[all]].field_1 < 32):
        revert with 0, 34
    if stor333[arg1[all]].field_0:
        if not stor333[arg1[all]].field_0 - (uint255(stor333[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor333[arg1[all]].field_0):
            if 31 < uint255(stor333[arg1[all]].field_0) * 0.5:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor333[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + (uint255(stor333[arg1[all]].field_0) * 0.5) + 97 > idx:
                    mem[idx + 32] = stor333[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor333[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor333[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor333[arg1[all]].field_8
    else:
        if not stor333[arg1[all]].field_0 - (stor333[arg1[all]].field_1 < 32):
            revert with 0, 34
        if stor333[arg1[all]].field_1:
            if 31 < stor333[arg1[all]].field_1:
                mem[ceil32(ceil32(arg1.length)) + 129] = stor333[arg1[all]].field_0
                idx = ceil32(ceil32(arg1.length)) + 129
                s = 0
                while ceil32(ceil32(arg1.length)) + stor333[arg1[all]].field_1 + 97 > idx:
                    mem[idx + 32] = stor333[arg1[all]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor333[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor333[arg1[all]].field_1)]), 
            mem[ceil32(ceil32(arg1.length)) + 129] = 256 * stor333[arg1[all]].field_8
    mem[ceil32(ceil32(arg1.length)) + ceil32(stor333[arg1[all]].field_1) + 193 len ceil32(stor333[arg1[all]].field_1)] = mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor333[arg1[all]].field_1)]
    if ceil32(stor333[arg1[all]].field_1) > stor333[arg1[all]].field_1:
        mem[stor333[arg1[all]].field_1 + ceil32(ceil32(arg1.length)) + ceil32(stor333[arg1[all]].field_1) + 193] = 0
    return Array(len=stor333[arg1[all]].field_0, data=mem[ceil32(ceil32(arg1.length)) + 129 len ceil32(stor333[arg1[all]].field_1)], mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(stor333[arg1[all]].field_1)) + 193 len 2 * ceil32(stor333[arg1[all]].field_1)]), 
}

function setText(string arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 337
    if address[arg1[all]] != msg.sender:
        revert with 2192845056
    mem[64] = ceil32(arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    if s <= 0:
        revert with (Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256)
    mem[ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + arg2.length + 160] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 160]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 160]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 160]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 160]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + ceil32(arg2.length) + 160]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    if s >= 145:
        revert with 3746499313
    if stor336[arg1[all]].field_0:
        if not stor336[arg1[all]].field_0 - (uint255(stor336[arg1[all]].field_0) * 0.5 < 32):
            revert with 0, 34
        if not arg2.length:
            stor336[arg1[all]].field_0 = 0
            idx = 0
            while (uint255(stor336[arg1[all]].field_0) * 0.5) + 31 / 32 > idx:
                stor336[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor336[arg1[all]].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor336[arg1[all]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while (uint255(stor336[arg1[all]].field_0) * 0.5) + 31 / 32 > idx:
                stor336[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if not stor336[arg1[all]].field_0 - (stor336[arg1[all]].field_1 < 32):
            revert with 0, 34
        if not arg2.length:
            stor336[arg1[all]].field_0 = 0
            idx = 0
            while stor336[arg1[all]].field_1 + 31 / 32 > idx:
                stor336[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor336[arg1[all]].field_0 = (2 * arg2.length) + 1
            s = 0
            idx = arg2 + 36
            while arg2 + arg2.length + 36 > idx:
                stor336[arg1[all]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg2.length + 31) >> 5
            while stor336[arg1[all]].field_1 + 31 / 32 > idx:
                stor336[arg1[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getAllNames() {
    if sub_4b2b363c > test266151307():
        revert with 0, 65
    mem[96] = sub_4b2b363c
    mem[64] = (32 * sub_4b2b363c) + 128
    if not sub_4b2b363c:
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_57] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _57
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_61] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _61
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _54:
            mem[t] = u + -_53 - 64
            _102 = mem[s]
            _105 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _105:
                mem[v + u + 32] = mem[v + _102 + 32]
                v = v + 32
                continue 
            if ceil32(_105) > _105:
                mem[_105 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_105) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = sub_4b2b363c
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_114] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _114
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_117] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _117
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _111:
            mem[t] = u + -_110 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _138:
                mem[v + u + 32] = mem[v + _136 + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[_138 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_138) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_a1ba5523(?) {
    if sub_4b2b363c > test266151307():
        revert with 0, 65
    mem[96] = sub_4b2b363c
    mem[64] = (32 * sub_4b2b363c) + 128
    if not sub_4b2b363c:
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_57] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _57
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_61] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _61
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _54:
            mem[t] = u + -_53 - 64
            _102 = mem[s]
            _105 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _105:
                mem[v + u + 32] = mem[v + _102 + 32]
                v = v + 32
                continue 
            if ceil32(_105) > _105:
                mem[_105 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_105) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = sub_4b2b363c
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_114] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _114
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_117] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _117
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _111:
            mem[t] = u + -_110 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _138:
                mem[v + u + 32] = mem[v + _136 + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[_138 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_138) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_e30eddbe(?) {
    if sub_4b2b363c > test266151307():
        revert with 0, 65
    mem[96] = sub_4b2b363c
    mem[64] = (32 * sub_4b2b363c) + 128
    if not sub_4b2b363c:
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _57 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_57] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_57 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_57 + 32] = stor332[idx].field_0
                            s = _57 + 32
                            t = sha3(sha3(idx, 332))
                            while _57 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _57
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _61 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_61] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_61 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_61 + 32] = stor332[idx].field_0
                            s = _61 + 32
                            t = sha3(sha3(idx, 332))
                            while _61 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _61
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _53 = mem[64]
        mem[mem[64]] = 32
        _54 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _54:
            mem[t] = u + -_53 - 64
            _102 = mem[s]
            _105 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _105:
                mem[v + u + 32] = mem[v + _102 + 32]
                v = v + 32
                continue 
            if ceil32(_105) > _105:
                mem[_105 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_105) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = sub_4b2b363c
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < sub_4b2b363c:
            mem[0] = idx
            mem[32] = 332
            if stor332[idx].field_0:
                if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                    revert with 0, 34
                _114 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(stor332[idx].field_0) * 0.5) + 32
                mem[_114] = uint255(stor332[idx].field_0) * 0.5
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_114 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_114 + 32] = stor332[idx].field_0
                            s = _114 + 32
                            t = sha3(sha3(idx, 332))
                            while _114 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _114
            else:
                if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                    revert with 0, 34
                _117 = mem[64]
                mem[64] = mem[64] + ceil32(stor332[idx].field_1) + 32
                mem[_117] = stor332[idx].field_1
                if stor332[idx].field_0:
                    if not stor332[idx].field_0 - (uint255(stor332[idx].field_0) * 0.5 < 32):
                        revert with 0, 34
                    if Mask(256, -1, stor332[idx].field_0):
                        if 31 >= uint255(stor332[idx].field_0) * 0.5:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + (uint255(stor332[idx].field_0) * 0.5) > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                else:
                    if not stor332[idx].field_0 - (stor332[idx].field_1 < 32):
                        revert with 0, 34
                    if stor332[idx].field_1:
                        if 31 >= stor332[idx].field_1:
                            mem[_117 + 32] = 256 * stor332[idx].field_8
                        else:
                            mem[0] = sha3(idx, 332)
                            mem[_117 + 32] = stor332[idx].field_0
                            s = _117 + 32
                            t = sha3(sha3(idx, 332))
                            while _117 + stor332[idx].field_1 > s:
                                mem[s + 32] = stor1[t]
                                s = s + 32
                                t = t + 1
                                continue 
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _117
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _111:
            mem[t] = u + -_110 - 64
            _136 = mem[s]
            _138 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _138:
                mem[v + u + 32] = mem[v + _136 + 32]
                v = v + 32
                continue 
            if ceil32(_138) > _138:
                mem[_138 + u + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_138) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_19757b9b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    require s > 0
    if not -s + 1:
        if bool(stor308.length):
            if not bool(stor308.length) - (uint255(stor308.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor308.length):
                if not bool(stor308.length) - (uint255(stor308.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor308.length):
                    if 31 < uint255(stor308.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor308.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor308.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor308[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor308.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor308.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor308.length.field_8
            else:
                if not bool(stor308.length) - (stor308.length.field_1 < 32):
                    revert with 0, 34
                if stor308.length.field_1:
                    if 31 < stor308.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor308.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor308.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor308[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor308.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor308.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor308.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor308.length) * 0.5) + 224 len ceil32(uint255(stor308.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor308.length) * 0.5)]
            if ceil32(uint255(stor308.length) * 0.5) > uint255(stor308.length) * 0.5:
                mem[(uint255(stor308.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor308.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor308.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor308.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor308.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor308.length) * 0.5)]), 
        if not bool(stor308.length) - (stor308.length.field_1 < 32):
            revert with 0, 34
        if bool(stor308.length):
            if not bool(stor308.length) - (uint255(stor308.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor308.length):
                if 31 < uint255(stor308.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor308.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor308.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor308[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor308.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor308.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor308.length.field_8
        else:
            if not bool(stor308.length) - (stor308.length.field_1 < 32):
                revert with 0, 34
            if stor308.length.field_1:
                if 31 < stor308.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor308.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor308.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor308[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor308.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor308.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor308.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor308.length.field_1) + 224 len ceil32(stor308.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor308.length.field_1)]
        if ceil32(stor308.length.field_1) > stor308.length.field_1:
            mem[stor308.length.field_1 + ceil32(arg1.length) + ceil32(stor308.length.field_1) + 224] = 0
        return Array(len=stor308.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor308.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor308.length.field_1)) + 224 len 2 * ceil32(stor308.length.field_1)]), 
    if not -s + 2:
        if bool(stor309.length):
            if not bool(stor309.length) - (uint255(stor309.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor309.length):
                if not bool(stor309.length) - (uint255(stor309.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor309.length):
                    if 31 < uint255(stor309.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor309.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor309.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor309[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor309.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor309.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor309.length.field_8
            else:
                if not bool(stor309.length) - (stor309.length.field_1 < 32):
                    revert with 0, 34
                if stor309.length.field_1:
                    if 31 < stor309.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor309.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor309.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor309[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor309.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor309.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor309.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor309.length) * 0.5) + 224 len ceil32(uint255(stor309.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor309.length) * 0.5)]
            if ceil32(uint255(stor309.length) * 0.5) > uint255(stor309.length) * 0.5:
                mem[(uint255(stor309.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor309.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor309.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor309.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor309.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor309.length) * 0.5)]), 
        if not bool(stor309.length) - (stor309.length.field_1 < 32):
            revert with 0, 34
        if bool(stor309.length):
            if not bool(stor309.length) - (uint255(stor309.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor309.length):
                if 31 < uint255(stor309.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor309.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor309.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor309[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor309.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor309.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor309.length.field_8
        else:
            if not bool(stor309.length) - (stor309.length.field_1 < 32):
                revert with 0, 34
            if stor309.length.field_1:
                if 31 < stor309.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor309.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor309.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor309[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor309.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor309.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor309.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor309.length.field_1) + 224 len ceil32(stor309.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor309.length.field_1)]
        if ceil32(stor309.length.field_1) > stor309.length.field_1:
            mem[stor309.length.field_1 + ceil32(arg1.length) + ceil32(stor309.length.field_1) + 224] = 0
        return Array(len=stor309.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor309.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor309.length.field_1)) + 224 len 2 * ceil32(stor309.length.field_1)]), 
    if not -s + 3:
        if bool(stor310.length):
            if not bool(stor310.length) - (uint255(stor310.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor310.length):
                if not bool(stor310.length) - (uint255(stor310.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor310.length):
                    if 31 < uint255(stor310.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor310.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor310.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor310[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor310.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor310.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor310.length.field_8
            else:
                if not bool(stor310.length) - (stor310.length.field_1 < 32):
                    revert with 0, 34
                if stor310.length.field_1:
                    if 31 < stor310.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor310.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor310.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor310[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor310.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor310.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor310.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor310.length) * 0.5) + 224 len ceil32(uint255(stor310.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor310.length) * 0.5)]
            if ceil32(uint255(stor310.length) * 0.5) > uint255(stor310.length) * 0.5:
                mem[(uint255(stor310.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor310.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor310.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor310.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor310.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor310.length) * 0.5)]), 
        if not bool(stor310.length) - (stor310.length.field_1 < 32):
            revert with 0, 34
        if bool(stor310.length):
            if not bool(stor310.length) - (uint255(stor310.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor310.length):
                if 31 < uint255(stor310.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor310.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor310.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor310[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor310.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor310.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor310.length.field_8
        else:
            if not bool(stor310.length) - (stor310.length.field_1 < 32):
                revert with 0, 34
            if stor310.length.field_1:
                if 31 < stor310.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor310.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor310.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor310[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor310.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor310.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor310.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor310.length.field_1) + 224 len ceil32(stor310.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor310.length.field_1)]
        if ceil32(stor310.length.field_1) > stor310.length.field_1:
            mem[stor310.length.field_1 + ceil32(arg1.length) + ceil32(stor310.length.field_1) + 224] = 0
        return Array(len=stor310.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor310.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor310.length.field_1)) + 224 len 2 * ceil32(stor310.length.field_1)]), 
    if not -s + 4:
        if bool(stor311.length):
            if not bool(stor311.length) - (uint255(stor311.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor311.length):
                if not bool(stor311.length) - (uint255(stor311.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor311.length):
                    if 31 < uint255(stor311.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor311.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor311.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor311[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor311.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor311.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor311.length.field_8
            else:
                if not bool(stor311.length) - (stor311.length.field_1 < 32):
                    revert with 0, 34
                if stor311.length.field_1:
                    if 31 < stor311.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor311.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor311.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor311[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor311.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor311.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor311.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor311.length) * 0.5) + 224 len ceil32(uint255(stor311.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor311.length) * 0.5)]
            if ceil32(uint255(stor311.length) * 0.5) > uint255(stor311.length) * 0.5:
                mem[(uint255(stor311.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor311.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor311.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor311.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor311.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor311.length) * 0.5)]), 
        if not bool(stor311.length) - (stor311.length.field_1 < 32):
            revert with 0, 34
        if bool(stor311.length):
            if not bool(stor311.length) - (uint255(stor311.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor311.length):
                if 31 < uint255(stor311.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor311.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor311.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor311[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor311.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor311.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor311.length.field_8
        else:
            if not bool(stor311.length) - (stor311.length.field_1 < 32):
                revert with 0, 34
            if stor311.length.field_1:
                if 31 < stor311.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor311.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor311.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor311[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor311.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor311.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor311.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor311.length.field_1) + 224 len ceil32(stor311.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor311.length.field_1)]
        if ceil32(stor311.length.field_1) > stor311.length.field_1:
            mem[stor311.length.field_1 + ceil32(arg1.length) + ceil32(stor311.length.field_1) + 224] = 0
        return Array(len=stor311.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor311.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor311.length.field_1)) + 224 len 2 * ceil32(stor311.length.field_1)]), 
    if not -s + 5:
        if bool(stor312.length):
            if not bool(stor312.length) - (uint255(stor312.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor312.length):
                if not bool(stor312.length) - (uint255(stor312.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor312.length):
                    if 31 < uint255(stor312.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor312.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor312.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor312[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor312.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor312.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor312.length.field_8
            else:
                if not bool(stor312.length) - (stor312.length.field_1 < 32):
                    revert with 0, 34
                if stor312.length.field_1:
                    if 31 < stor312.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor312.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor312.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor312[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor312.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor312.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor312.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor312.length) * 0.5) + 224 len ceil32(uint255(stor312.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor312.length) * 0.5)]
            if ceil32(uint255(stor312.length) * 0.5) > uint255(stor312.length) * 0.5:
                mem[(uint255(stor312.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor312.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor312.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor312.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor312.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor312.length) * 0.5)]), 
        if not bool(stor312.length) - (stor312.length.field_1 < 32):
            revert with 0, 34
        if bool(stor312.length):
            if not bool(stor312.length) - (uint255(stor312.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor312.length):
                if 31 < uint255(stor312.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor312.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor312.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor312[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor312.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor312.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor312.length.field_8
        else:
            if not bool(stor312.length) - (stor312.length.field_1 < 32):
                revert with 0, 34
            if stor312.length.field_1:
                if 31 < stor312.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor312.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor312.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor312[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor312.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor312.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor312.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor312.length.field_1) + 224 len ceil32(stor312.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor312.length.field_1)]
        if ceil32(stor312.length.field_1) > stor312.length.field_1:
            mem[stor312.length.field_1 + ceil32(arg1.length) + ceil32(stor312.length.field_1) + 224] = 0
        return Array(len=stor312.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor312.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor312.length.field_1)) + 224 len 2 * ceil32(stor312.length.field_1)]), 
    if not -s + 6:
        if bool(stor313.length):
            if not bool(stor313.length) - (uint255(stor313.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor313.length):
                if not bool(stor313.length) - (uint255(stor313.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor313.length):
                    if 31 < uint255(stor313.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor313.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor313.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor313[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor313.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor313.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor313.length.field_8
            else:
                if not bool(stor313.length) - (stor313.length.field_1 < 32):
                    revert with 0, 34
                if stor313.length.field_1:
                    if 31 < stor313.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor313.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor313.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor313[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor313.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor313.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor313.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor313.length) * 0.5) + 224 len ceil32(uint255(stor313.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor313.length) * 0.5)]
            if ceil32(uint255(stor313.length) * 0.5) > uint255(stor313.length) * 0.5:
                mem[(uint255(stor313.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor313.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor313.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor313.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor313.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor313.length) * 0.5)]), 
        if not bool(stor313.length) - (stor313.length.field_1 < 32):
            revert with 0, 34
        if bool(stor313.length):
            if not bool(stor313.length) - (uint255(stor313.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor313.length):
                if 31 < uint255(stor313.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor313.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor313.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor313[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor313.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor313.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor313.length.field_8
        else:
            if not bool(stor313.length) - (stor313.length.field_1 < 32):
                revert with 0, 34
            if stor313.length.field_1:
                if 31 < stor313.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor313.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor313.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor313[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor313.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor313.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor313.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor313.length.field_1) + 224 len ceil32(stor313.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor313.length.field_1)]
        if ceil32(stor313.length.field_1) > stor313.length.field_1:
            mem[stor313.length.field_1 + ceil32(arg1.length) + ceil32(stor313.length.field_1) + 224] = 0
        return Array(len=stor313.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor313.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor313.length.field_1)) + 224 len 2 * ceil32(stor313.length.field_1)]), 
    if not -s + 7:
        if bool(stor314.length):
            if not bool(stor314.length) - (uint255(stor314.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor314.length):
                if not bool(stor314.length) - (uint255(stor314.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor314.length):
                    if 31 < uint255(stor314.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor314.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor314.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor314[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor314.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor314.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor314.length.field_8
            else:
                if not bool(stor314.length) - (stor314.length.field_1 < 32):
                    revert with 0, 34
                if stor314.length.field_1:
                    if 31 < stor314.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor314.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor314.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor314[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor314.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor314.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor314.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor314.length) * 0.5) + 224 len ceil32(uint255(stor314.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor314.length) * 0.5)]
            if ceil32(uint255(stor314.length) * 0.5) > uint255(stor314.length) * 0.5:
                mem[(uint255(stor314.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor314.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor314.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor314.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor314.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor314.length) * 0.5)]), 
        if not bool(stor314.length) - (stor314.length.field_1 < 32):
            revert with 0, 34
        if bool(stor314.length):
            if not bool(stor314.length) - (uint255(stor314.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor314.length):
                if 31 < uint255(stor314.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor314.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor314.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor314[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor314.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor314.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor314.length.field_8
        else:
            if not bool(stor314.length) - (stor314.length.field_1 < 32):
                revert with 0, 34
            if stor314.length.field_1:
                if 31 < stor314.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor314.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor314.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor314[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor314.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor314.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor314.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor314.length.field_1) + 224 len ceil32(stor314.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor314.length.field_1)]
        if ceil32(stor314.length.field_1) > stor314.length.field_1:
            mem[stor314.length.field_1 + ceil32(arg1.length) + ceil32(stor314.length.field_1) + 224] = 0
        return Array(len=stor314.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor314.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor314.length.field_1)) + 224 len 2 * ceil32(stor314.length.field_1)]), 
    if not -s + 8:
        if bool(stor315.length):
            if not bool(stor315.length) - (uint255(stor315.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor315.length):
                if not bool(stor315.length) - (uint255(stor315.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor315.length):
                    if 31 < uint255(stor315.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor315.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor315.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor315[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor315.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor315.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor315.length.field_8
            else:
                if not bool(stor315.length) - (stor315.length.field_1 < 32):
                    revert with 0, 34
                if stor315.length.field_1:
                    if 31 < stor315.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor315.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor315.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor315[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor315.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor315.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor315.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor315.length) * 0.5) + 224 len ceil32(uint255(stor315.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor315.length) * 0.5)]
            if ceil32(uint255(stor315.length) * 0.5) > uint255(stor315.length) * 0.5:
                mem[(uint255(stor315.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor315.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor315.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor315.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor315.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor315.length) * 0.5)]), 
        if not bool(stor315.length) - (stor315.length.field_1 < 32):
            revert with 0, 34
        if bool(stor315.length):
            if not bool(stor315.length) - (uint255(stor315.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor315.length):
                if 31 < uint255(stor315.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor315.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor315.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor315[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor315.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor315.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor315.length.field_8
        else:
            if not bool(stor315.length) - (stor315.length.field_1 < 32):
                revert with 0, 34
            if stor315.length.field_1:
                if 31 < stor315.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor315.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor315.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor315[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor315.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor315.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor315.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor315.length.field_1) + 224 len ceil32(stor315.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor315.length.field_1)]
        if ceil32(stor315.length.field_1) > stor315.length.field_1:
            mem[stor315.length.field_1 + ceil32(arg1.length) + ceil32(stor315.length.field_1) + 224] = 0
        return Array(len=stor315.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor315.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor315.length.field_1)) + 224 len 2 * ceil32(stor315.length.field_1)]), 
    if -s + 9:
        if bool(stor317.length):
            if not bool(stor317.length) - (uint255(stor317.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor317.length):
                if not bool(stor317.length) - (uint255(stor317.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor317.length):
                    if 31 < uint255(stor317.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor317.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor317.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor317[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor317.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor317.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor317.length.field_8
            else:
                if not bool(stor317.length) - (stor317.length.field_1 < 32):
                    revert with 0, 34
                if stor317.length.field_1:
                    if 31 < stor317.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor317.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor317.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor317[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor317.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor317.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor317.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor317.length) * 0.5) + 224 len ceil32(uint255(stor317.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor317.length) * 0.5)]
            if ceil32(uint255(stor317.length) * 0.5) > uint255(stor317.length) * 0.5:
                mem[(uint255(stor317.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor317.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor317.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor317.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor317.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor317.length) * 0.5)]), 
        if not bool(stor317.length) - (stor317.length.field_1 < 32):
            revert with 0, 34
        if bool(stor317.length):
            if not bool(stor317.length) - (uint255(stor317.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor317.length):
                if 31 < uint255(stor317.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor317.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor317.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor317[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor317.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor317.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor317.length.field_8
        else:
            if not bool(stor317.length) - (stor317.length.field_1 < 32):
                revert with 0, 34
            if stor317.length.field_1:
                if 31 < stor317.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor317.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor317.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor317[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor317.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor317.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor317.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor317.length.field_1) + 224 len ceil32(stor317.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor317.length.field_1)]
        if ceil32(stor317.length.field_1) > stor317.length.field_1:
            mem[stor317.length.field_1 + ceil32(arg1.length) + ceil32(stor317.length.field_1) + 224] = 0
        return Array(len=stor317.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor317.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor317.length.field_1)) + 224 len 2 * ceil32(stor317.length.field_1)]), 
    if bool(stor316.length):
        if not bool(stor316.length) - (uint255(stor316.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor316.length):
            if not bool(stor316.length) - (uint255(stor316.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor316.length):
                if 31 < uint255(stor316.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor316.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor316.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor316[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor316.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor316.length) * 0.5)]), 
                mem[ceil32(arg1.length) + 160] = 256 * stor316.length.field_8
        else:
            if not bool(stor316.length) - (stor316.length.field_1 < 32):
                revert with 0, 34
            if stor316.length.field_1:
                if 31 < stor316.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor316.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor316.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor316[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor316.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor316.length) * 0.5)]), 
                mem[ceil32(arg1.length) + 160] = 256 * stor316.length.field_8
        mem[ceil32(arg1.length) + ceil32(uint255(stor316.length) * 0.5) + 224 len ceil32(uint255(stor316.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor316.length) * 0.5)]
        if ceil32(uint255(stor316.length) * 0.5) > uint255(stor316.length) * 0.5:
            mem[(uint255(stor316.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor316.length) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor316.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor316.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor316.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor316.length) * 0.5)]), 
    if not bool(stor316.length) - (stor316.length.field_1 < 32):
        revert with 0, 34
    if bool(stor316.length):
        if not bool(stor316.length) - (uint255(stor316.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor316.length):
            if 31 < uint255(stor316.length) * 0.5:
                mem[ceil32(arg1.length) + 160] = uint256(stor316.field_0)
                idx = ceil32(arg1.length) + 160
                s = 0
                while ceil32(arg1.length) + (uint255(stor316.length) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor316[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor316.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor316.length.field_1)])
            mem[ceil32(arg1.length) + 160] = 256 * stor316.length.field_8
    else:
        if not bool(stor316.length) - (stor316.length.field_1 < 32):
            revert with 0, 34
        if stor316.length.field_1:
            if 31 < stor316.length.field_1:
                mem[ceil32(arg1.length) + 160] = uint256(stor316.field_0)
                idx = ceil32(arg1.length) + 160
                s = 0
                while ceil32(arg1.length) + stor316.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor316[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor316.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor316.length.field_1)])
            mem[ceil32(arg1.length) + 160] = 256 * stor316.length.field_8
    mem[ceil32(arg1.length) + ceil32(stor316.length.field_1) + 224 len ceil32(stor316.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor316.length.field_1)]
    if ceil32(stor316.length.field_1) > stor316.length.field_1:
        mem[stor316.length.field_1 + ceil32(arg1.length) + ceil32(stor316.length.field_1) + 224] = 0
    return Array(len=stor316.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor316.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor316.length.field_1)) + 224 len 2 * ceil32(stor316.length.field_1)]), 
}

function sub_701c45b5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if Mask(8, 248, mem[idx + 128]) < 0x8000000000000000000000000000000000000000000000000000000000000000:
            if idx > -2:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xe000000000000000000000000000000000000000000000000000000000000000:
            if idx > -3:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 2
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf000000000000000000000000000000000000000000000000000000000000000:
            if idx > -4:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 3
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) < 0xf800000000000000000000000000000000000000000000000000000000000000:
            if idx > -5:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 4
            s = s + 1
            continue 
        if Mask(8, 248, mem[idx + 128]) >= 0xfc00000000000000000000000000000000000000000000000000000000000000:
            if idx > -7:
                revert with 0, 17
            if not s + 1:
                revert with 0, 17
            idx = idx + 6
            s = s + 1
            continue 
        if idx > -6:
            revert with 0, 17
        if not s + 1:
            revert with 0, 17
        idx = idx + 5
        s = s + 1
        continue 
    require s > 0
    if not -s + 1:
        if bool(stor320.length):
            if not bool(stor320.length) - (uint255(stor320.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor320.length):
                if not bool(stor320.length) - (uint255(stor320.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor320.length):
                    if 31 < uint255(stor320.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor320.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor320.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor320[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor320.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor320.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor320.length.field_8
            else:
                if not bool(stor320.length) - (stor320.length.field_1 < 32):
                    revert with 0, 34
                if stor320.length.field_1:
                    if 31 < stor320.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor320.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor320.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor320[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor320.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor320.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor320.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor320.length) * 0.5) + 224 len ceil32(uint255(stor320.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor320.length) * 0.5)]
            if ceil32(uint255(stor320.length) * 0.5) > uint255(stor320.length) * 0.5:
                mem[(uint255(stor320.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor320.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor320.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor320.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor320.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor320.length) * 0.5)]), 
        if not bool(stor320.length) - (stor320.length.field_1 < 32):
            revert with 0, 34
        if bool(stor320.length):
            if not bool(stor320.length) - (uint255(stor320.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor320.length):
                if 31 < uint255(stor320.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor320.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor320.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor320[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor320.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor320.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor320.length.field_8
        else:
            if not bool(stor320.length) - (stor320.length.field_1 < 32):
                revert with 0, 34
            if stor320.length.field_1:
                if 31 < stor320.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor320.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor320.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor320[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor320.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor320.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor320.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor320.length.field_1) + 224 len ceil32(stor320.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor320.length.field_1)]
        if ceil32(stor320.length.field_1) > stor320.length.field_1:
            mem[stor320.length.field_1 + ceil32(arg1.length) + ceil32(stor320.length.field_1) + 224] = 0
        return Array(len=stor320.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor320.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor320.length.field_1)) + 224 len 2 * ceil32(stor320.length.field_1)]), 
    if not -s + 2:
        if bool(stor321.length):
            if not bool(stor321.length) - (uint255(stor321.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor321.length):
                if not bool(stor321.length) - (uint255(stor321.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor321.length):
                    if 31 < uint255(stor321.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor321.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor321.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor321[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor321.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor321.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor321.length.field_8
            else:
                if not bool(stor321.length) - (stor321.length.field_1 < 32):
                    revert with 0, 34
                if stor321.length.field_1:
                    if 31 < stor321.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor321.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor321.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor321[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor321.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor321.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor321.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor321.length) * 0.5) + 224 len ceil32(uint255(stor321.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor321.length) * 0.5)]
            if ceil32(uint255(stor321.length) * 0.5) > uint255(stor321.length) * 0.5:
                mem[(uint255(stor321.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor321.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor321.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor321.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor321.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor321.length) * 0.5)]), 
        if not bool(stor321.length) - (stor321.length.field_1 < 32):
            revert with 0, 34
        if bool(stor321.length):
            if not bool(stor321.length) - (uint255(stor321.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor321.length):
                if 31 < uint255(stor321.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor321.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor321.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor321[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor321.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor321.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor321.length.field_8
        else:
            if not bool(stor321.length) - (stor321.length.field_1 < 32):
                revert with 0, 34
            if stor321.length.field_1:
                if 31 < stor321.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor321.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor321.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor321[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor321.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor321.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor321.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor321.length.field_1) + 224 len ceil32(stor321.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor321.length.field_1)]
        if ceil32(stor321.length.field_1) > stor321.length.field_1:
            mem[stor321.length.field_1 + ceil32(arg1.length) + ceil32(stor321.length.field_1) + 224] = 0
        return Array(len=stor321.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor321.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor321.length.field_1)) + 224 len 2 * ceil32(stor321.length.field_1)]), 
    if not -s + 3:
        if bool(stor322.length):
            if not bool(stor322.length) - (uint255(stor322.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor322.length):
                if not bool(stor322.length) - (uint255(stor322.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor322.length):
                    if 31 < uint255(stor322.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor322.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor322.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor322[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor322.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor322.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor322.length.field_8
            else:
                if not bool(stor322.length) - (stor322.length.field_1 < 32):
                    revert with 0, 34
                if stor322.length.field_1:
                    if 31 < stor322.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor322.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor322.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor322[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor322.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor322.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor322.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor322.length) * 0.5) + 224 len ceil32(uint255(stor322.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor322.length) * 0.5)]
            if ceil32(uint255(stor322.length) * 0.5) > uint255(stor322.length) * 0.5:
                mem[(uint255(stor322.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor322.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor322.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor322.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor322.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor322.length) * 0.5)]), 
        if not bool(stor322.length) - (stor322.length.field_1 < 32):
            revert with 0, 34
        if bool(stor322.length):
            if not bool(stor322.length) - (uint255(stor322.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor322.length):
                if 31 < uint255(stor322.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor322.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor322.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor322[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor322.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor322.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor322.length.field_8
        else:
            if not bool(stor322.length) - (stor322.length.field_1 < 32):
                revert with 0, 34
            if stor322.length.field_1:
                if 31 < stor322.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor322.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor322.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor322[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor322.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor322.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor322.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor322.length.field_1) + 224 len ceil32(stor322.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor322.length.field_1)]
        if ceil32(stor322.length.field_1) > stor322.length.field_1:
            mem[stor322.length.field_1 + ceil32(arg1.length) + ceil32(stor322.length.field_1) + 224] = 0
        return Array(len=stor322.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor322.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor322.length.field_1)) + 224 len 2 * ceil32(stor322.length.field_1)]), 
    if not -s + 4:
        if bool(stor323.length):
            if not bool(stor323.length) - (uint255(stor323.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor323.length):
                if not bool(stor323.length) - (uint255(stor323.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor323.length):
                    if 31 < uint255(stor323.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor323.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor323.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor323[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor323.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor323.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor323.length.field_8
            else:
                if not bool(stor323.length) - (stor323.length.field_1 < 32):
                    revert with 0, 34
                if stor323.length.field_1:
                    if 31 < stor323.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor323.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor323.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor323[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor323.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor323.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor323.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor323.length) * 0.5) + 224 len ceil32(uint255(stor323.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor323.length) * 0.5)]
            if ceil32(uint255(stor323.length) * 0.5) > uint255(stor323.length) * 0.5:
                mem[(uint255(stor323.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor323.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor323.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor323.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor323.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor323.length) * 0.5)]), 
        if not bool(stor323.length) - (stor323.length.field_1 < 32):
            revert with 0, 34
        if bool(stor323.length):
            if not bool(stor323.length) - (uint255(stor323.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor323.length):
                if 31 < uint255(stor323.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor323.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor323.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor323[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor323.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor323.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor323.length.field_8
        else:
            if not bool(stor323.length) - (stor323.length.field_1 < 32):
                revert with 0, 34
            if stor323.length.field_1:
                if 31 < stor323.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor323.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor323.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor323[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor323.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor323.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor323.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor323.length.field_1) + 224 len ceil32(stor323.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor323.length.field_1)]
        if ceil32(stor323.length.field_1) > stor323.length.field_1:
            mem[stor323.length.field_1 + ceil32(arg1.length) + ceil32(stor323.length.field_1) + 224] = 0
        return Array(len=stor323.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor323.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor323.length.field_1)) + 224 len 2 * ceil32(stor323.length.field_1)]), 
    if not -s + 5:
        if bool(stor324.length):
            if not bool(stor324.length) - (uint255(stor324.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor324.length):
                if not bool(stor324.length) - (uint255(stor324.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor324.length):
                    if 31 < uint255(stor324.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor324.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor324.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor324[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor324.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor324.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor324.length.field_8
            else:
                if not bool(stor324.length) - (stor324.length.field_1 < 32):
                    revert with 0, 34
                if stor324.length.field_1:
                    if 31 < stor324.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor324.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor324.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor324[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor324.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor324.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor324.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor324.length) * 0.5) + 224 len ceil32(uint255(stor324.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor324.length) * 0.5)]
            if ceil32(uint255(stor324.length) * 0.5) > uint255(stor324.length) * 0.5:
                mem[(uint255(stor324.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor324.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor324.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor324.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor324.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor324.length) * 0.5)]), 
        if not bool(stor324.length) - (stor324.length.field_1 < 32):
            revert with 0, 34
        if bool(stor324.length):
            if not bool(stor324.length) - (uint255(stor324.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor324.length):
                if 31 < uint255(stor324.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor324.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor324.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor324[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor324.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor324.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor324.length.field_8
        else:
            if not bool(stor324.length) - (stor324.length.field_1 < 32):
                revert with 0, 34
            if stor324.length.field_1:
                if 31 < stor324.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor324.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor324.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor324[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor324.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor324.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor324.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor324.length.field_1) + 224 len ceil32(stor324.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor324.length.field_1)]
        if ceil32(stor324.length.field_1) > stor324.length.field_1:
            mem[stor324.length.field_1 + ceil32(arg1.length) + ceil32(stor324.length.field_1) + 224] = 0
        return Array(len=stor324.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor324.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor324.length.field_1)) + 224 len 2 * ceil32(stor324.length.field_1)]), 
    if not -s + 6:
        if bool(stor325.length):
            if not bool(stor325.length) - (uint255(stor325.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor325.length):
                if not bool(stor325.length) - (uint255(stor325.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor325.length):
                    if 31 < uint255(stor325.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor325.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor325.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor325[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor325.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor325.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor325.length.field_8
            else:
                if not bool(stor325.length) - (stor325.length.field_1 < 32):
                    revert with 0, 34
                if stor325.length.field_1:
                    if 31 < stor325.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor325.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor325.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor325[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor325.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor325.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor325.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor325.length) * 0.5) + 224 len ceil32(uint255(stor325.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor325.length) * 0.5)]
            if ceil32(uint255(stor325.length) * 0.5) > uint255(stor325.length) * 0.5:
                mem[(uint255(stor325.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor325.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor325.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor325.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor325.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor325.length) * 0.5)]), 
        if not bool(stor325.length) - (stor325.length.field_1 < 32):
            revert with 0, 34
        if bool(stor325.length):
            if not bool(stor325.length) - (uint255(stor325.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor325.length):
                if 31 < uint255(stor325.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor325.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor325.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor325[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor325.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor325.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor325.length.field_8
        else:
            if not bool(stor325.length) - (stor325.length.field_1 < 32):
                revert with 0, 34
            if stor325.length.field_1:
                if 31 < stor325.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor325.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor325.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor325[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor325.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor325.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor325.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor325.length.field_1) + 224 len ceil32(stor325.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor325.length.field_1)]
        if ceil32(stor325.length.field_1) > stor325.length.field_1:
            mem[stor325.length.field_1 + ceil32(arg1.length) + ceil32(stor325.length.field_1) + 224] = 0
        return Array(len=stor325.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor325.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor325.length.field_1)) + 224 len 2 * ceil32(stor325.length.field_1)]), 
    if not -s + 7:
        if bool(stor326.length):
            if not bool(stor326.length) - (uint255(stor326.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor326.length):
                if not bool(stor326.length) - (uint255(stor326.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor326.length):
                    if 31 < uint255(stor326.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor326.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor326.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor326[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor326.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor326.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor326.length.field_8
            else:
                if not bool(stor326.length) - (stor326.length.field_1 < 32):
                    revert with 0, 34
                if stor326.length.field_1:
                    if 31 < stor326.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor326.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor326.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor326[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor326.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor326.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor326.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor326.length) * 0.5) + 224 len ceil32(uint255(stor326.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor326.length) * 0.5)]
            if ceil32(uint255(stor326.length) * 0.5) > uint255(stor326.length) * 0.5:
                mem[(uint255(stor326.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor326.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor326.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor326.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor326.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor326.length) * 0.5)]), 
        if not bool(stor326.length) - (stor326.length.field_1 < 32):
            revert with 0, 34
        if bool(stor326.length):
            if not bool(stor326.length) - (uint255(stor326.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor326.length):
                if 31 < uint255(stor326.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor326.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor326.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor326[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor326.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor326.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor326.length.field_8
        else:
            if not bool(stor326.length) - (stor326.length.field_1 < 32):
                revert with 0, 34
            if stor326.length.field_1:
                if 31 < stor326.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor326.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor326.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor326[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor326.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor326.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor326.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor326.length.field_1) + 224 len ceil32(stor326.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor326.length.field_1)]
        if ceil32(stor326.length.field_1) > stor326.length.field_1:
            mem[stor326.length.field_1 + ceil32(arg1.length) + ceil32(stor326.length.field_1) + 224] = 0
        return Array(len=stor326.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor326.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor326.length.field_1)) + 224 len 2 * ceil32(stor326.length.field_1)]), 
    if not -s + 8:
        if bool(stor327.length):
            if not bool(stor327.length) - (uint255(stor327.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor327.length):
                if not bool(stor327.length) - (uint255(stor327.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor327.length):
                    if 31 < uint255(stor327.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor327.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor327.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor327[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor327.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor327.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor327.length.field_8
            else:
                if not bool(stor327.length) - (stor327.length.field_1 < 32):
                    revert with 0, 34
                if stor327.length.field_1:
                    if 31 < stor327.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor327.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor327.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor327[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor327.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor327.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor327.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor327.length) * 0.5) + 224 len ceil32(uint255(stor327.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor327.length) * 0.5)]
            if ceil32(uint255(stor327.length) * 0.5) > uint255(stor327.length) * 0.5:
                mem[(uint255(stor327.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor327.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor327.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor327.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor327.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor327.length) * 0.5)]), 
        if not bool(stor327.length) - (stor327.length.field_1 < 32):
            revert with 0, 34
        if bool(stor327.length):
            if not bool(stor327.length) - (uint255(stor327.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor327.length):
                if 31 < uint255(stor327.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor327.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor327.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor327[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor327.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor327.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor327.length.field_8
        else:
            if not bool(stor327.length) - (stor327.length.field_1 < 32):
                revert with 0, 34
            if stor327.length.field_1:
                if 31 < stor327.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor327.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor327.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor327[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor327.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor327.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor327.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor327.length.field_1) + 224 len ceil32(stor327.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor327.length.field_1)]
        if ceil32(stor327.length.field_1) > stor327.length.field_1:
            mem[stor327.length.field_1 + ceil32(arg1.length) + ceil32(stor327.length.field_1) + 224] = 0
        return Array(len=stor327.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor327.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor327.length.field_1)) + 224 len 2 * ceil32(stor327.length.field_1)]), 
    if -s + 9:
        if bool(stor329.length):
            if not bool(stor329.length) - (uint255(stor329.length) * 0.5 < 32):
                revert with 0, 34
            if bool(stor329.length):
                if not bool(stor329.length) - (uint255(stor329.length) * 0.5 < 32):
                    revert with 0, 34
                if Mask(256, -1, stor329.length):
                    if 31 < uint255(stor329.length) * 0.5:
                        mem[ceil32(arg1.length) + 160] = uint256(stor329.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + (uint255(stor329.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor329[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor329.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor329.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor329.length.field_8
            else:
                if not bool(stor329.length) - (stor329.length.field_1 < 32):
                    revert with 0, 34
                if stor329.length.field_1:
                    if 31 < stor329.length.field_1:
                        mem[ceil32(arg1.length) + 160] = uint256(stor329.field_0)
                        idx = ceil32(arg1.length) + 160
                        s = 0
                        while ceil32(arg1.length) + stor329.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor329[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=2 * Mask(256, -1, stor329.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor329.length) * 0.5)]), 
                    mem[ceil32(arg1.length) + 160] = 256 * stor329.length.field_8
            mem[ceil32(arg1.length) + ceil32(uint255(stor329.length) * 0.5) + 224 len ceil32(uint255(stor329.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor329.length) * 0.5)]
            if ceil32(uint255(stor329.length) * 0.5) > uint255(stor329.length) * 0.5:
                mem[(uint255(stor329.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor329.length) * 0.5) + 224] = 0
            return Array(len=2 * Mask(256, -1, stor329.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor329.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor329.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor329.length) * 0.5)]), 
        if not bool(stor329.length) - (stor329.length.field_1 < 32):
            revert with 0, 34
        if bool(stor329.length):
            if not bool(stor329.length) - (uint255(stor329.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor329.length):
                if 31 < uint255(stor329.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor329.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor329.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor329[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor329.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor329.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor329.length.field_8
        else:
            if not bool(stor329.length) - (stor329.length.field_1 < 32):
                revert with 0, 34
            if stor329.length.field_1:
                if 31 < stor329.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor329.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor329.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor329[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=stor329.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor329.length.field_1)])
                mem[ceil32(arg1.length) + 160] = 256 * stor329.length.field_8
        mem[ceil32(arg1.length) + ceil32(stor329.length.field_1) + 224 len ceil32(stor329.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor329.length.field_1)]
        if ceil32(stor329.length.field_1) > stor329.length.field_1:
            mem[stor329.length.field_1 + ceil32(arg1.length) + ceil32(stor329.length.field_1) + 224] = 0
        return Array(len=stor329.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor329.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor329.length.field_1)) + 224 len 2 * ceil32(stor329.length.field_1)]), 
    if bool(stor328.length):
        if not bool(stor328.length) - (uint255(stor328.length) * 0.5 < 32):
            revert with 0, 34
        if bool(stor328.length):
            if not bool(stor328.length) - (uint255(stor328.length) * 0.5 < 32):
                revert with 0, 34
            if Mask(256, -1, stor328.length):
                if 31 < uint255(stor328.length) * 0.5:
                    mem[ceil32(arg1.length) + 160] = uint256(stor328.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + (uint255(stor328.length) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor328[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor328.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor328.length) * 0.5)]), 
                mem[ceil32(arg1.length) + 160] = 256 * stor328.length.field_8
        else:
            if not bool(stor328.length) - (stor328.length.field_1 < 32):
                revert with 0, 34
            if stor328.length.field_1:
                if 31 < stor328.length.field_1:
                    mem[ceil32(arg1.length) + 160] = uint256(stor328.field_0)
                    idx = ceil32(arg1.length) + 160
                    s = 0
                    while ceil32(arg1.length) + stor328.length.field_1 + 128 > idx:
                        mem[idx + 32] = stor328[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor328.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor328.length) * 0.5)]), 
                mem[ceil32(arg1.length) + 160] = 256 * stor328.length.field_8
        mem[ceil32(arg1.length) + ceil32(uint255(stor328.length) * 0.5) + 224 len ceil32(uint255(stor328.length) * 0.5)] = mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor328.length) * 0.5)]
        if ceil32(uint255(stor328.length) * 0.5) > uint255(stor328.length) * 0.5:
            mem[(uint255(stor328.length) * 0.5) + ceil32(arg1.length) + ceil32(uint255(stor328.length) * 0.5) + 224] = 0
        return Array(len=2 * Mask(256, -1, stor328.length), data=mem[ceil32(arg1.length) + 160 len ceil32(uint255(stor328.length) * 0.5)], mem[ceil32(arg1.length) + (2 * ceil32(uint255(stor328.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor328.length) * 0.5)]), 
    if not bool(stor328.length) - (stor328.length.field_1 < 32):
        revert with 0, 34
    if bool(stor328.length):
        if not bool(stor328.length) - (uint255(stor328.length) * 0.5 < 32):
            revert with 0, 34
        if Mask(256, -1, stor328.length):
            if 31 < uint255(stor328.length) * 0.5:
                mem[ceil32(arg1.length) + 160] = uint256(stor328.field_0)
                idx = ceil32(arg1.length) + 160
                s = 0
                while ceil32(arg1.length) + (uint255(stor328.length) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor328[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor328.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor328.length.field_1)])
            mem[ceil32(arg1.length) + 160] = 256 * stor328.length.field_8
    else:
        if not bool(stor328.length) - (stor328.length.field_1 < 32):
            revert with 0, 34
        if stor328.length.field_1:
            if 31 < stor328.length.field_1:
                mem[ceil32(arg1.length) + 160] = uint256(stor328.field_0)
                idx = ceil32(arg1.length) + 160
                s = 0
                while ceil32(arg1.length) + stor328.length.field_1 + 128 > idx:
                    mem[idx + 32] = stor328[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor328.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor328.length.field_1)])
            mem[ceil32(arg1.length) + 160] = 256 * stor328.length.field_8
    mem[ceil32(arg1.length) + ceil32(stor328.length.field_1) + 224 len ceil32(stor328.length.field_1)] = mem[ceil32(arg1.length) + 160 len ceil32(stor328.length.field_1)]
    if ceil32(stor328.length.field_1) > stor328.length.field_1:
        mem[stor328.length.field_1 + ceil32(arg1.length) + ceil32(stor328.length.field_1) + 224] = 0
    return Array(len=stor328.length % 128, data=mem[ceil32(arg1.length) + 160 len ceil32(stor328.length.field_1)], mem[ceil32(arg1.length) + (2 * ceil32(stor328.length.field_1)) + 224 len 2 * ceil32(stor328.length.field_1)]), 
}



}
