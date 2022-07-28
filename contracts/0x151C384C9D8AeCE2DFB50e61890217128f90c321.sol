contract main {




// =====================  Runtime code  =====================


#
#  - lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4)
#  - tokenURI(uint256 arg1)
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
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 _saleIsActive;
array of struct features;
mapping of struct stor16;
mapping of uint256 sub_42fc0d1e;
mapping of uint8 stor18;
mapping of uint8 stor19;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_3779bfde(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor19[arg1[all]])
}

function sub_42fc0d1e(?) {
    require calldata.size - 4 >= 32
    return sub_42fc0d1e[arg1]
}

function _saleIsActive() {
    return bool(_saleIsActive)
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

function sub_77ce5f69(?) {
    require calldata.size - 4 >= 32
    return bool(stor18[arg1])
}

function owner() {
    return owner
}

function features(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint256(features[arg1].field_0), uint256(features[arg1].field_256)
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
    return uint256(sub_8ee74912[arg1][arg2[all]][arg3].field_0), uint256(sub_8ee74912[arg1][arg2[all]][arg3].field_256)
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender == _owner
    stor13 = arg1
}

function setSaleIsActive(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender == _owner
    _saleIsActive = uint8(arg1)
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require msg.sender == _owner
    call _owner with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to withdraw Ether'
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

function sub_ea099f46(?) {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg2] != msg.sender:
        revert with 0, 'YOU ARE NOT THE OWNER!'
    if stor18[arg2]:
        revert with 0, 'ONLY NON-FINALITY CAN KUSTOMIZE!'
    if arg1 >= 138:
        revert with 0, 'NOT AN AVAILABLE COLOR!'
    sub_42fc0d1e[arg2] = arg1
}

function getFeatures(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 352
    s = 2
    while 480 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    idx = 480
    s = 6
    while 608 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(features[arg1].field_0), 
           uint256(features[arg1].field_256),
           mem[384 len 96] >> 768,
           uint256(features[arg1].field_1536),
           mem[512 len 96]
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

function sub_bf5de299(?) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        revert with 0, 'YOU ARE NOT THE OWNER!'
    if stor18[arg1]:
        revert with 0, 'ALREADY IN FINALITY!'
    idx = 224
    s = 2
    while 352 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    idx = 352
    s = 6
    while 480 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if uint8(stor[sha3(uint256(stor15[arg1].field_0), uint256(stor15[arg1].field_256), uint256(stor15[arg1].field_512), mem[256], mem[288], mem[320], 19)].field_0):
        revert with 0, 'THIS IS ALREADY TAKEN!'
    stor18[arg1] = 1
    uint8(stor[sha3(uint256(stor15[arg1].field_0), uint256(stor15[arg1].field_256), uint256(stor15[arg1].field_512), mem[256], mem[288], mem[320], 19)].field_0) = 1
}

function mint() payable {
    if stor11 >= stor12:
        revert with 0, 'SUPPLY LIMIT REACHED!'
    if not _saleIsActive:
        revert with 0, 'SALE IS NOT ACTIVE!'
    if stor11 == -1:
        revert with 0, 17
    stor11++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if balanceOf[address(msg.sender)] > -2:
        revert with 0, 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor11 + 1] = msg.sender
    emit Transfer(0, msg.sender, stor11 + 1);
    if ext_code.size(msg.sender):
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
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

function sub_ae8c17a4(?) {
    require calldata.size - 4 >= 352
    require 99 < calldata.size
    require calldata.size >= 196
    idx = 0
    s = 68
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 227 < calldata.size
    require calldata.size >= 324
    idx = 0
    s = 196
    t = 224
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not ownerOf[cd[324]]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[cd[324]] != msg.sender:
        revert with 0, 'YOU ARE NOT THE OWNER!'
    if stor18[cd[324]]:
        revert with 0, 'ONLY NON-FINALITY CAN KUSTOMIZE!'
    if 138 <= mem[224]:
        revert with 0, 'NO SUCH COLOR!'
    if 138 <= mem[256]:
        revert with 0, 'NO SUCH COLOR!'
    if 138 <= mem[288]:
        revert with 0, 'NO SUCH COLOR!'
    if 138 <= mem[320]:
        revert with 0, 'NO SUCH COLOR!'
    uint256(features[cd[324]].field_0) = cd[4]
    uint256(features[cd[324]].field_256) = cd[36]
    s = 2
    idx = 96
    while 224 > idx:
        uint256(features[cd[324]][s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 6
    while 6 > idx:
        uint256(features[cd[324]][idx].field_0) = 0
        idx = idx + 1
        continue 
    s = 6
    idx = 224
    while 352 > idx:
        uint256(features[cd[324]][s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        uint256(features[cd[324]][idx].field_0) = 0
        idx = idx + 1
        continue 
    emit 0x5820ce35: cd[324]
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
        if bool(stor9[cd[4] << 240].field_0) == uint255(uint256(stor9[cd[4] << 240].field_0)) * 0.5 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            uint256(stor9[cd[4] << 240].field_0) = 0
            idx = 0
            while (uint255(uint256(stor9[cd[4] << 240].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor9[cd[4] << 240][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor9[cd[4] << 240].field_0) = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                uint256(stor9[cd[4] << 240][s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while (uint255(uint256(stor9[cd[4] << 240].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor9[cd[4] << 240][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor9[cd[4] << 240].field_0) == stor9[cd[4] << 240].field_1 % 128 < 32:
            revert with 0, 34
        if not ('cd', 36).length:
            uint256(stor9[cd[4] << 240].field_0) = 0
            idx = 0
            while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                uint256(stor9[cd[4] << 240][idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor9[cd[4] << 240].field_0) = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                uint256(stor9[cd[4] << 240][s].field_0) = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor9[cd[4] << 240].field_1 % 128 + 31 / 32 > idx:
                uint256(stor9[cd[4] << 240][idx].field_0) = 0
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                    mem[idx + 32] = uint256(stor2[s].field_256)
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
                    mem[idx + 32] = uint256(stor2[s].field_256)
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
        if bool(stor9[arg1].field_0) == uint255(uint256(stor9[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor9[arg1].field_0):
            if bool(stor9[arg1].field_0) == uint255(uint256(stor9[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor9[arg1].field_0)):
                if 31 < uint255(uint256(stor9[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor9[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor9[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor9[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        else:
            if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor9[arg1].field_1 % 128:
                if 31 < stor9[arg1].field_1 % 128:
                    mem[128] = uint256(stor9[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor9[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor9[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor9[arg1].field_8)
        mem[ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5) > uint255(uint256(stor9[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor9[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor9[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor9[arg1].field_0)) * 0.5)]), 
    if bool(stor9[arg1].field_0) == stor9[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor9[arg1].field_0):
        if bool(stor9[arg1].field_0) == uint255(uint256(stor9[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor9[arg1].field_0)):
            if 31 < uint255(uint256(stor9[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor9[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor9[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s].field_256)
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
                mem[128] = uint256(stor9[arg1].field_0)
                idx = 128
                s = 0
                while stor9[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor9[arg1][s].field_256)
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

function sub_69cd7056(?) {
    require calldata.size - 4 >= 32
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16[arg1].field_0):
            if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor16[arg1].field_0)):
                if 31 < uint255(uint256(stor16[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor16[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor16[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
        else:
            if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor16[arg1].field_1 % 128:
                if 31 < stor16[arg1].field_1 % 128:
                    mem[128] = uint256(stor16[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor16[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
        mem[ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) > uint255(uint256(stor16[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor16[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor16[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor16[arg1].field_0)) * 0.5)]), 
    if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor16[arg1].field_0):
        if bool(stor16[arg1].field_0) == uint255(uint256(stor16[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor16[arg1].field_0)):
            if 31 < uint255(uint256(stor16[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor16[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor16[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
    else:
        if bool(stor16[arg1].field_0) == stor16[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor16[arg1].field_1 % 128:
            if 31 < stor16[arg1].field_1 % 128:
                mem[128] = uint256(stor16[arg1].field_0)
                idx = 128
                s = 0
                while stor16[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor16[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16[arg1].field_8)
    mem[ceil32(stor16[arg1].field_1 % 128) + 192 len ceil32(stor16[arg1].field_1 % 128)] = mem[128 len ceil32(stor16[arg1].field_1 % 128)]
    if ceil32(stor16[arg1].field_1 % 128) > stor16[arg1].field_1 % 128:
        mem[stor16[arg1].field_1 % 128 + ceil32(stor16[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor16[arg1].field_0 % 128, data=mem[128 len ceil32(stor16[arg1].field_1 % 128)], mem[(2 * ceil32(stor16[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor16[arg1].field_1 % 128)]), 
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
        if not uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0):
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192].field_0):
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0):
            revert with 0, 'LayerZero: invalid payload'
        uint256(stor[_42][arg3 << 192].field_0) = 0
        uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_42'))].field_0) = 0
    else:
        _45 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if not uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('sha3', ('mem', ('range', ('add', 97, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), ('add', 32, ('cd', ('add', 4, ('param', 'arg2'))))))))].field_0):
            revert with 0, 'NonblockingReceiver: no stored message'
        if arg4.length != uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])][arg3 << 192].field_0):
            revert with 0, 'LayerZero: invalid payload'
        mem[ceil32(ceil32(arg2.length)) + 97 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg2.length)) + 97] = 0
        if sha3(arg4[all]) != uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0):
            revert with 0, 'LayerZero: invalid payload'
        uint256(stor[_45][arg3 << 192].field_0) = 0
        uint256(stor1[('map', ('mask_shl', 64, 0, 192, ('param', 'arg3')), ('var', '_45'))].field_0) = 0
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
        if bool(stor9[arg1 << 240].field_0) == uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5 < 32:
            revert with 0, 34
        if uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    else:
        if bool(stor9[arg1 << 240].field_0) == stor9[arg1 << 240].field_1 % 128 < 32:
            revert with 0, 34
        if stor9[arg1 << 240].field_1 % 128 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This chain is currently unavailable for travel'
    if stor18[arg2]:
        revert with 0, 'ONLY NON-FINALITY CAN TRAVERSE!'
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
    mem[226] = stor13
    mem[192] = 34
    mem[294] = this.address
    mem[326] = 160
    mem[422] = 64
    mem[454 len 64] = msg.sender, arg2
    mem[358] = 0
    mem[390] = 256
    mem[518] = 34
    mem[550 len 64] = 0, stor13, 0, uint16(arg1) << 192
    mem[584] = 0
    require ext_code.size(stor7)
    staticcall stor7.0x40a7bb10 with:
            gas gas_remaining wei
           args arg1 << 240, address(this.address), 160, 0, 256, 64, msg.sender, arg2, 34, 0, stor13, 0, uint16(arg1) << 192 >> 16, 0
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
        if bool(stor9[arg1 << 240].field_0) == uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5 < 32:
            revert with 0, 34
        mem[ceil32(return_data.size) + 454] = uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5
        if not bool(stor9[arg1 << 240].field_0):
            require ext_code.size(stor7)
            call stor7.0xc5803100 with:
               value msg.value wei
                 gas gas_remaining wei
                args arg1 << 240, 192, 256, msg.sender, 0, 352, 2 * Mask(256, -1, uint256(stor9[arg1 << 240].field_0)), Mask(248, 8, uint256(stor9[arg1 << 240].field_0)), 64, msg.sender, arg2, 34, stor13, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5:
                    mem[idx + ceil32(return_data.size) + 486] = uint256(stor9[arg1 << 240][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5) + 224, msg.sender, 0, ceil32(uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5) + 320, 2 * Mask(256, -1, uint256(stor9[arg1 << 240].field_0)), mem[ceil32(return_data.size) + 486 len ceil32(uint255(uint256(stor9[arg1 << 240].field_0)) * 0.5) + 32], msg.sender, arg2, 34, stor13, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor13, ext_call.return_data[0 len 30]
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
                args arg1 << 240, 192, 256, msg.sender, 0, 352, stor9[arg1 << 240].field_0 % 128, Mask(248, 8, uint256(stor9[arg1 << 240].field_0)), 64, msg.sender, arg2, 34, stor13, ext_call.return_data[0 len 30] >> 16, 0
        else:
            if bool(stor9[arg1 << 240].field_0) == 1:
                idx = 0
                s = 0
                while idx < stor9[arg1 << 240].field_1 % 128:
                    mem[idx + ceil32(return_data.size) + 486] = uint256(stor9[arg1 << 240][s].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(return_data.size) + ceil32(stor9[arg1 << 240].field_1 % 128) + 486] = 64
                require ext_code.size(stor7)
                call stor7.0xc5803100 with:
                   value msg.value wei
                     gas gas_remaining wei
                    args arg1 << 240, 192, ceil32(stor9[arg1 << 240].field_1 % 128) + 224, msg.sender, 0, ceil32(stor9[arg1 << 240].field_1 % 128) + 320, stor9[arg1 << 240].field_0 % 128, mem[ceil32(return_data.size) + 486 len ceil32(stor9[arg1 << 240].field_1 % 128) + 32], msg.sender, arg2, 34, stor13, ext_call.return_data[0 len 30] >> 16, 0
            else:
                mem[ceil32(return_data.size) + 326] = -ceil32(return_data.size) - 262
                mem[32 len 64] = msg.sender, arg2
                mem[ceil32(return_data.size) + 358] = msg.sender
                mem[ceil32(return_data.size) + 390] = 0
                mem[ceil32(return_data.size) + 422] = -ceil32(return_data.size) - 166
                mem[96] = 34
                mem[128 len 64] = 0, stor13, ext_call.return_data[0 len 30]
                mem[162] = 0
                require ext_code.size(stor7)
                call stor7.mem[Mask(256, -256, msg.sender, arg2) << 256 len 4] with:
                   value msg.value wei
                     gas gas_remaining wei
                    args mem[(Mask(256, -256, msg.sender, arg2) << 256) + 4 len -(Mask(256, -256, msg.sender, arg2) << 256) + 188]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getSVG(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    mem[96] = uint256(features[arg1].field_0)
    mem[128] = uint256(features[arg1].field_256)
    mem[224] = uint256(features[arg1].field_512)
    idx = 224
    s = 2
    while 352 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[160] = 224
    mem[352] = uint256(features[arg1].field_1536)
    idx = 352
    s = 6
    while 480 > idx + 32:
        mem[idx + 32] = uint256(features[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[192] = 352
    mem[512] = uint256(features[arg1].field_0)
    mem[544] = uint256(features[arg1].field_256)
    mem[480] = 64
    mem[608] = uint256(features[arg1].field_512)
    mem[640] = mem[256]
    mem[576] = 64
    mem[704] = mem[288]
    mem[736] = mem[320]
    mem[672] = 64
    mem[0] = sub_42fc0d1e[arg1]
    mem[32] = 16
    mem[64] = 66400
    mem[768] = 65600
    mem[800] = 0
    idx = 0
    while idx < 512:
        if idx / 8 >= mem[480]:
            revert with 0, 50
        if idx / 8 >= mem[576]:
            revert with 0, 50
        if idx / 8 >= mem[672]:
            revert with 0, 50
        s = 0
        while s < 8:
            if 7 < s:
                revert with 0, 17
            if 7 < s:
                revert with 0, 17
            if 7 < s:
                revert with 0, 17
            if s > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if idx % 32 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                revert with 0, 17
            if 50 * idx % 32 > !(50 * s):
                revert with 0, 17
            if not (50 * idx % 32) + (50 * s):
                _2049 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2049] = 1
                mem[_2049 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                if idx / 32 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                    revert with 0, 17
                if not 50 * idx / 32:
                    _2098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2098] = 1
                    mem[_2098 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                    mem[0] = mem[448]
                    mem[32] = 16
                    _2100 = sha3(mem[448], 16)
                    _2101 = mem[64]
                    mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                    idx = 0
                    while idx < 1:
                        mem[idx + _2101 + 64] = mem[idx + _2049 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2101 + 65] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                    _2380 = mem[_2098]
                    idx = 0
                    while idx < _2380:
                        mem[idx + _2101 + 70] = mem[idx + _2098 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2380 + _2101 + 70] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                    if ceil32(_2380) <= _2380:
                        if bool(stor[_2100].field_0):
                            if bool(stor[_2100].field_0) == uint255(uint256(stor[_2100].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor[_2100].field_0):
                                mem[_2380 + _2101 + 78] = Mask(248, 8, uint256(stor[_2100].field_0))
                                _4181 = mem[64]
                                mem[mem[64]] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + -mem[64] + 46
                                mem[64] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + 78
                                if mem[800] > !mem[_4181]:
                                    revert with 0, 17
                                if mem[800] + mem[_4181] > mem[768] - 64:
                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                _4331 = mem[_4181]
                                t = mem[800] + 832
                                idx = _4181 + 32
                                while idx < _4181 + _4331 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4331
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if bool(stor[_2100].field_0) != 1:
                                _4198 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if mem[800] > !mem[_4198]:
                                    revert with 0, 17
                                if mem[800] + mem[_4198] > mem[768] - 64:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                '',
                                                0,
                                                uint32('DynamicBuffer: Appending out of '),
                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                _4355 = mem[_4198]
                                t = mem[800] + 832
                                idx = _4198 + 32
                                while idx < _4198 + _4355 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4355
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            mem[0] = _2100
                            idx = 0
                            t = sha3(_2100)
                            while idx < uint255(uint256(stor[_2100].field_0)) * 0.5:
                                mem[idx + _2380 + _2101 + 78] = uint256(stor[t].field_0)
                                idx = idx + 32
                                t = t + 1
                                continue 
                            _5519 = mem[64]
                            mem[mem[64]] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + -mem[64] + 46
                            mem[64] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + 78
                            if mem[800] > !mem[_5519]:
                                revert with 0, 17
                            if mem[800] + mem[_5519] > mem[768] - 64:
                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                            _5623 = mem[_5519]
                            t = mem[800] + 832
                            idx = _5519 + 32
                            while idx < _5519 + _5623 + 32:
                                mem[t] = mem[idx]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            mem[800] = mem[800] + _5623
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                        if bool(stor[_2100].field_0) == stor[_2100].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor[_2100].field_0):
                            mem[_2380 + _2101 + 78] = Mask(248, 8, uint256(stor[_2100].field_0))
                            _4199 = mem[64]
                            mem[mem[64]] = _2380 + _2101 + stor[_2100].field_1 % 128 + -mem[64] + 46
                            mem[64] = _2380 + _2101 + stor[_2100].field_1 % 128 + 78
                            if mem[800] > !mem[_4199]:
                                revert with 0, 17
                            if mem[800] + mem[_4199] > mem[768] - 64:
                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                            _4358 = mem[_4199]
                            t = mem[800] + 832
                            idx = _4199 + 32
                            while idx < _4199 + _4358 + 32:
                                mem[t] = mem[idx]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            mem[800] = mem[800] + _4358
                        else:
                            if bool(stor[_2100].field_0) != 1:
                                _4225 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if mem[800] > !mem[_4225]:
                                    revert with 0, 17
                                if mem[800] + mem[_4225] > mem[768] - 64:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                '',
                                                0,
                                                uint32('DynamicBuffer: Appending out of '),
                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                _4384 = mem[_4225]
                                t = mem[800] + 832
                                idx = _4225 + 32
                                while idx < _4225 + _4384 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4384
                            else:
                                mem[0] = _2100
                                idx = 0
                                t = sha3(_2100)
                                while idx < stor[_2100].field_1 % 128:
                                    mem[idx + _2380 + _2101 + 78] = uint256(stor[t].field_0)
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                                _5520 = mem[64]
                                mem[mem[64]] = _2380 + _2101 + stor[_2100].field_1 % 128 + -mem[64] + 46
                                mem[64] = _2380 + _2101 + stor[_2100].field_1 % 128 + 78
                                if mem[800] > !mem[_5520]:
                                    revert with 0, 17
                                if mem[800] + mem[_5520] > mem[768] - 64:
                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                _5626 = mem[_5520]
                                t = mem[800] + 832
                                idx = _5520 + 32
                                while idx < _5520 + _5626 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _5626
                    else:
                        if bool(stor[_2100].field_0):
                            if bool(stor[_2100].field_0) == uint255(uint256(stor[_2100].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if not bool(stor[_2100].field_0):
                                mem[_2380 + _2101 + 78] = Mask(248, 8, uint256(stor[_2100].field_0))
                                _4182 = mem[64]
                                mem[mem[64]] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + -mem[64] + 46
                                mem[64] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + 78
                                if mem[800] > !mem[_4182]:
                                    revert with 0, 17
                                if mem[800] + mem[_4182] > mem[768] - 64:
                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                _4336 = mem[_4182]
                                t = mem[800] + 832
                                idx = _4182 + 32
                                while idx < _4182 + _4336 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4336
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            if bool(stor[_2100].field_0) != 1:
                                _4203 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if mem[800] > !mem[_4203]:
                                    revert with 0, 17
                                if mem[800] + mem[_4203] > mem[768] - 64:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                '',
                                                0,
                                                uint32('DynamicBuffer: Appending out of '),
                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                _4362 = mem[_4203]
                                t = mem[800] + 832
                                idx = _4203 + 32
                                while idx < _4203 + _4362 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4362
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                            mem[0] = _2100
                            idx = 0
                            t = sha3(_2100)
                            while idx < uint255(uint256(stor[_2100].field_0)) * 0.5:
                                mem[idx + _2380 + _2101 + 78] = uint256(stor[t].field_0)
                                idx = idx + 32
                                t = t + 1
                                continue 
                            _5521 = mem[64]
                            mem[mem[64]] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + -mem[64] + 46
                            mem[64] = _2380 + _2101 + (uint255(uint256(stor[_2100].field_0)) * 0.5) + 78
                            if mem[800] > !mem[_5521]:
                                revert with 0, 17
                            if mem[800] + mem[_5521] > mem[768] - 64:
                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                            _5629 = mem[_5521]
                            t = mem[800] + 832
                            idx = _5521 + 32
                            while idx < _5521 + _5629 + 32:
                                mem[t] = mem[idx]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            mem[800] = mem[800] + _5629
                            if t == -1:
                                revert with 0, 17
                            t = t + 1
                            continue 
                        if bool(stor[_2100].field_0) == stor[_2100].field_1 % 128 < 32:
                            revert with 0, 34
                        if not bool(stor[_2100].field_0):
                            mem[_2380 + _2101 + 78] = Mask(248, 8, uint256(stor[_2100].field_0))
                            _4204 = mem[64]
                            mem[mem[64]] = _2380 + _2101 + stor[_2100].field_1 % 128 + -mem[64] + 46
                            mem[64] = _2380 + _2101 + stor[_2100].field_1 % 128 + 78
                            if mem[800] > !mem[_4204]:
                                revert with 0, 17
                            if mem[800] + mem[_4204] > mem[768] - 64:
                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                            _4365 = mem[_4204]
                            t = mem[800] + 832
                            idx = _4204 + 32
                            while idx < _4204 + _4365 + 32:
                                mem[t] = mem[idx]
                                t = t + 32
                                idx = idx + 32
                                continue 
                            mem[800] = mem[800] + _4365
                        else:
                            if bool(stor[_2100].field_0) != 1:
                                _4232 = mem[64]
                                mem[mem[64]] = -mem[64] - 32
                                mem[64] = 0
                                if mem[800] > !mem[_4232]:
                                    revert with 0, 17
                                if mem[800] + mem[_4232] > mem[768] - 64:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                '',
                                                0,
                                                uint32('DynamicBuffer: Appending out of '),
                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                _4390 = mem[_4232]
                                t = mem[800] + 832
                                idx = _4232 + 32
                                while idx < _4232 + _4390 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _4390
                            else:
                                mem[0] = _2100
                                idx = 0
                                t = sha3(_2100)
                                while idx < stor[_2100].field_1 % 128:
                                    mem[idx + _2380 + _2101 + 78] = uint256(stor[t].field_0)
                                    idx = idx + 32
                                    t = t + 1
                                    continue 
                                _5522 = mem[64]
                                mem[mem[64]] = _2380 + _2101 + stor[_2100].field_1 % 128 + -mem[64] + 46
                                mem[64] = _2380 + _2101 + stor[_2100].field_1 % 128 + 78
                                if mem[800] > !mem[_5522]:
                                    revert with 0, 17
                                if mem[800] + mem[_5522] > mem[768] - 64:
                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                _5632 = mem[_5522]
                                t = mem[800] + 832
                                idx = _5522 + 32
                                while idx < _5522 + _5632 + 32:
                                    mem[t] = mem[idx]
                                    t = t + 32
                                    idx = idx + 32
                                    continue 
                                mem[800] = mem[800] + _5632
                else:
                    u = 0
                    t = 50 * idx / 32
                    while t:
                        if u == -1:
                            revert with 0, 17
                        u = u + 1
                        t = t / 10
                        continue 
                    if u > test266151307():
                        revert with 0, 65
                    _2378 = mem[64]
                    mem[mem[64]] = u
                    mem[64] = mem[64] + ceil32(u) + 32
                    if not u:
                        v = u
                        t = 50 * idx / 32
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if 48 > !(t % 10):
                                revert with 0, 17
                            if v - 1 >= mem[_2378]:
                                revert with 0, 50
                            mem[v + _2378 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        mem[0] = mem[448]
                        mem[32] = 16
                        _4012 = sha3(mem[448], 16)
                        _4013 = mem[64]
                        mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                        _4017 = mem[_2049]
                        idx = 0
                        while idx < _4017:
                            mem[idx + _4013 + 64] = mem[idx + _2049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4013 + _4017 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                        if ceil32(_4017) <= _4017:
                            _5511 = mem[_2378]
                            idx = 0
                            while idx < _5511:
                                mem[idx + _4013 + _4017 + 69] = mem[idx + _2378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5511 + _4013 + _4017 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5511) <= _5511:
                                if bool(stor[_4012].field_0):
                                    if bool(stor[_4012].field_0) == uint255(uint256(stor[_4012].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5511 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7763 = mem[64]
                                        mem[mem[64]] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7763]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7763] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8195 = mem[_7763]
                                        t = mem[800] + 832
                                        idx = _7763 + 32
                                        while idx < _7763 + _8195 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8195
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7814 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7814]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7814] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8291 = mem[_7814]
                                            t = mem[800] + 832
                                            idx = _7814 + 32
                                            while idx < _7814 + _8291 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8291
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < uint255(uint256(stor[_4012].field_0)) * 0.5:
                                                mem[idx + _5511 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9863 = mem[64]
                                            mem[mem[64]] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9863]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9863] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10063 = mem[_9863]
                                            t = mem[800] + 832
                                            idx = _9863 + 32
                                            while idx < _9863 + _10063 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10063
                                else:
                                    if bool(stor[_4012].field_0) == stor[_4012].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5511 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7815 = mem[64]
                                        mem[mem[64]] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                        if mem[800] > !mem[_7815]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7815] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8294 = mem[_7815]
                                        t = mem[800] + 832
                                        idx = _7815 + 32
                                        while idx < _7815 + _8294 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8294
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7913 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7913]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7913] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8398 = mem[_7913]
                                            t = mem[800] + 832
                                            idx = _7913 + 32
                                            while idx < _7913 + _8398 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8398
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < stor[_4012].field_1 % 128:
                                                mem[idx + _5511 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9864 = mem[64]
                                            mem[mem[64]] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                            if mem[800] > !mem[_9864]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9864] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10066 = mem[_9864]
                                            t = mem[800] + 832
                                            idx = _9864 + 32
                                            while idx < _9864 + _10066 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10066
                            else:
                                if bool(stor[_4012].field_0):
                                    if bool(stor[_4012].field_0) == uint255(uint256(stor[_4012].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5511 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7764 = mem[64]
                                        mem[mem[64]] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7764]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7764] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8200 = mem[_7764]
                                        t = mem[800] + 832
                                        idx = _7764 + 32
                                        while idx < _7764 + _8200 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8200
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7819 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7819]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7819] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8298 = mem[_7819]
                                            t = mem[800] + 832
                                            idx = _7819 + 32
                                            while idx < _7819 + _8298 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8298
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < uint255(uint256(stor[_4012].field_0)) * 0.5:
                                                mem[idx + _5511 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9865 = mem[64]
                                            mem[mem[64]] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5511 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9865]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9865] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10069 = mem[_9865]
                                            t = mem[800] + 832
                                            idx = _9865 + 32
                                            while idx < _9865 + _10069 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10069
                                else:
                                    if bool(stor[_4012].field_0) == stor[_4012].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5511 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7820 = mem[64]
                                        mem[mem[64]] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                        if mem[800] > !mem[_7820]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7820] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8301 = mem[_7820]
                                        t = mem[800] + 832
                                        idx = _7820 + 32
                                        while idx < _7820 + _8301 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8301
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7920 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7920]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7920] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8404 = mem[_7920]
                                            t = mem[800] + 832
                                            idx = _7920 + 32
                                            while idx < _7920 + _8404 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8404
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < stor[_4012].field_1 % 128:
                                                mem[idx + _5511 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9866 = mem[64]
                                            mem[mem[64]] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5511 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                            if mem[800] > !mem[_9866]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9866] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10072 = mem[_9866]
                                            t = mem[800] + 832
                                            idx = _9866 + 32
                                            while idx < _9866 + _10072 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10072
                        else:
                            _5512 = mem[_2378]
                            idx = 0
                            while idx < _5512:
                                mem[idx + _4013 + _4017 + 69] = mem[idx + _2378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5512 + _4013 + _4017 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5512) <= _5512:
                                if bool(stor[_4012].field_0):
                                    if bool(stor[_4012].field_0) == uint255(uint256(stor[_4012].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5512 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7765 = mem[64]
                                        mem[mem[64]] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7765]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7765] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8205 = mem[_7765]
                                        t = mem[800] + 832
                                        idx = _7765 + 32
                                        while idx < _7765 + _8205 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8205
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7824 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7824]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7824] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8305 = mem[_7824]
                                            t = mem[800] + 832
                                            idx = _7824 + 32
                                            while idx < _7824 + _8305 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8305
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < uint255(uint256(stor[_4012].field_0)) * 0.5:
                                                mem[idx + _5512 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9867 = mem[64]
                                            mem[mem[64]] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9867]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9867] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10075 = mem[_9867]
                                            t = mem[800] + 832
                                            idx = _9867 + 32
                                            while idx < _9867 + _10075 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10075
                                else:
                                    if bool(stor[_4012].field_0) == stor[_4012].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5512 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7825 = mem[64]
                                        mem[mem[64]] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                        if mem[800] > !mem[_7825]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7825] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8308 = mem[_7825]
                                        t = mem[800] + 832
                                        idx = _7825 + 32
                                        while idx < _7825 + _8308 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8308
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7927 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7927]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7927] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8410 = mem[_7927]
                                            t = mem[800] + 832
                                            idx = _7927 + 32
                                            while idx < _7927 + _8410 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8410
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < stor[_4012].field_1 % 128:
                                                mem[idx + _5512 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9868 = mem[64]
                                            mem[mem[64]] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                            if mem[800] > !mem[_9868]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9868] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10078 = mem[_9868]
                                            t = mem[800] + 832
                                            idx = _9868 + 32
                                            while idx < _9868 + _10078 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10078
                            else:
                                if bool(stor[_4012].field_0):
                                    if bool(stor[_4012].field_0) == uint255(uint256(stor[_4012].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5512 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7766 = mem[64]
                                        mem[mem[64]] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7766]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7766] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8210 = mem[_7766]
                                        t = mem[800] + 832
                                        idx = _7766 + 32
                                        while idx < _7766 + _8210 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8210
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7829 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7829]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7829] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8312 = mem[_7829]
                                            t = mem[800] + 832
                                            idx = _7829 + 32
                                            while idx < _7829 + _8312 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8312
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < uint255(uint256(stor[_4012].field_0)) * 0.5:
                                                mem[idx + _5512 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9869 = mem[64]
                                            mem[mem[64]] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5512 + _4013 + _4017 + (uint255(uint256(stor[_4012].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9869]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9869] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10081 = mem[_9869]
                                            t = mem[800] + 832
                                            idx = _9869 + 32
                                            while idx < _9869 + _10081 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10081
                                else:
                                    if bool(stor[_4012].field_0) == stor[_4012].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4012].field_0):
                                        mem[_5512 + _4013 + _4017 + 77] = Mask(248, 8, uint256(stor[_4012].field_0))
                                        _7830 = mem[64]
                                        mem[mem[64]] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                        if mem[800] > !mem[_7830]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7830] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8315 = mem[_7830]
                                        t = mem[800] + 832
                                        idx = _7830 + 32
                                        while idx < _7830 + _8315 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8315
                                    else:
                                        if bool(stor[_4012].field_0) != 1:
                                            _7934 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7934]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7934] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8416 = mem[_7934]
                                            t = mem[800] + 832
                                            idx = _7934 + 32
                                            while idx < _7934 + _8416 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8416
                                        else:
                                            mem[0] = _4012
                                            idx = 0
                                            t = sha3(_4012)
                                            while idx < stor[_4012].field_1 % 128:
                                                mem[idx + _5512 + _4013 + _4017 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9870 = mem[64]
                                            mem[mem[64]] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5512 + _4013 + _4017 + stor[_4012].field_1 % 128 + 77
                                            if mem[800] > !mem[_9870]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9870] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10084 = mem[_9870]
                                            t = mem[800] + 832
                                            idx = _9870 + 32
                                            while idx < _9870 + _10084 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10084
                    else:
                        mem[_2378 + 32 len u] = call.data[calldata.size len u]
                        v = u
                        t = 50 * idx / 32
                        while t:
                            if v < 1:
                                revert with 0, 17
                            if 48 > !(t % 10):
                                revert with 0, 17
                            if v - 1 >= mem[_2378]:
                                revert with 0, 50
                            mem[v + _2378 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                            v = v - 1
                            t = t / 10
                            continue 
                        mem[0] = mem[448]
                        mem[32] = 16
                        _4015 = sha3(mem[448], 16)
                        _4016 = mem[64]
                        mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                        _4018 = mem[_2049]
                        idx = 0
                        while idx < _4018:
                            mem[idx + _4016 + 64] = mem[idx + _2049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4016 + _4018 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                        if ceil32(_4018) <= _4018:
                            _5513 = mem[_2378]
                            idx = 0
                            while idx < _5513:
                                mem[idx + _4016 + _4018 + 69] = mem[idx + _2378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5513 + _4016 + _4018 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5513) <= _5513:
                                if bool(stor[_4015].field_0):
                                    if bool(stor[_4015].field_0) == uint255(uint256(stor[_4015].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5513 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7767 = mem[64]
                                        mem[mem[64]] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7767]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7767] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8215 = mem[_7767]
                                        t = mem[800] + 832
                                        idx = _7767 + 32
                                        while idx < _7767 + _8215 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8215
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7834 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7834]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7834] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8319 = mem[_7834]
                                            t = mem[800] + 832
                                            idx = _7834 + 32
                                            while idx < _7834 + _8319 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8319
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < uint255(uint256(stor[_4015].field_0)) * 0.5:
                                                mem[idx + _5513 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9871 = mem[64]
                                            mem[mem[64]] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9871]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9871] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10087 = mem[_9871]
                                            t = mem[800] + 832
                                            idx = _9871 + 32
                                            while idx < _9871 + _10087 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10087
                                else:
                                    if bool(stor[_4015].field_0) == stor[_4015].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5513 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7835 = mem[64]
                                        mem[mem[64]] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                        if mem[800] > !mem[_7835]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7835] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8322 = mem[_7835]
                                        t = mem[800] + 832
                                        idx = _7835 + 32
                                        while idx < _7835 + _8322 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8322
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7941 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7941]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7941] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8422 = mem[_7941]
                                            t = mem[800] + 832
                                            idx = _7941 + 32
                                            while idx < _7941 + _8422 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8422
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < stor[_4015].field_1 % 128:
                                                mem[idx + _5513 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9872 = mem[64]
                                            mem[mem[64]] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                            if mem[800] > !mem[_9872]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9872] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10090 = mem[_9872]
                                            t = mem[800] + 832
                                            idx = _9872 + 32
                                            while idx < _9872 + _10090 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10090
                            else:
                                if bool(stor[_4015].field_0):
                                    if bool(stor[_4015].field_0) == uint255(uint256(stor[_4015].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5513 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7768 = mem[64]
                                        mem[mem[64]] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7768]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7768] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8220 = mem[_7768]
                                        t = mem[800] + 832
                                        idx = _7768 + 32
                                        while idx < _7768 + _8220 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8220
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7839 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7839]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7839] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8326 = mem[_7839]
                                            t = mem[800] + 832
                                            idx = _7839 + 32
                                            while idx < _7839 + _8326 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8326
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < uint255(uint256(stor[_4015].field_0)) * 0.5:
                                                mem[idx + _5513 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9873 = mem[64]
                                            mem[mem[64]] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5513 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9873]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9873] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10093 = mem[_9873]
                                            t = mem[800] + 832
                                            idx = _9873 + 32
                                            while idx < _9873 + _10093 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10093
                                else:
                                    if bool(stor[_4015].field_0) == stor[_4015].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5513 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7840 = mem[64]
                                        mem[mem[64]] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                        if mem[800] > !mem[_7840]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7840] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8329 = mem[_7840]
                                        t = mem[800] + 832
                                        idx = _7840 + 32
                                        while idx < _7840 + _8329 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8329
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7948 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7948]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7948] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8428 = mem[_7948]
                                            t = mem[800] + 832
                                            idx = _7948 + 32
                                            while idx < _7948 + _8428 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8428
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < stor[_4015].field_1 % 128:
                                                mem[idx + _5513 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9874 = mem[64]
                                            mem[mem[64]] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5513 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                            if mem[800] > !mem[_9874]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9874] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10096 = mem[_9874]
                                            t = mem[800] + 832
                                            idx = _9874 + 32
                                            while idx < _9874 + _10096 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10096
                        else:
                            _5514 = mem[_2378]
                            idx = 0
                            while idx < _5514:
                                mem[idx + _4016 + _4018 + 69] = mem[idx + _2378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5514 + _4016 + _4018 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5514) <= _5514:
                                if bool(stor[_4015].field_0):
                                    if bool(stor[_4015].field_0) == uint255(uint256(stor[_4015].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5514 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7769 = mem[64]
                                        mem[mem[64]] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7769]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7769] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8225 = mem[_7769]
                                        t = mem[800] + 832
                                        idx = _7769 + 32
                                        while idx < _7769 + _8225 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8225
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7844 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7844]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7844] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8333 = mem[_7844]
                                            t = mem[800] + 832
                                            idx = _7844 + 32
                                            while idx < _7844 + _8333 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8333
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < uint255(uint256(stor[_4015].field_0)) * 0.5:
                                                mem[idx + _5514 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9875 = mem[64]
                                            mem[mem[64]] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9875]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9875] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10099 = mem[_9875]
                                            t = mem[800] + 832
                                            idx = _9875 + 32
                                            while idx < _9875 + _10099 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10099
                                else:
                                    if bool(stor[_4015].field_0) == stor[_4015].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5514 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7845 = mem[64]
                                        mem[mem[64]] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                        if mem[800] > !mem[_7845]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7845] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8336 = mem[_7845]
                                        t = mem[800] + 832
                                        idx = _7845 + 32
                                        while idx < _7845 + _8336 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8336
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7955 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7955]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7955] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8434 = mem[_7955]
                                            t = mem[800] + 832
                                            idx = _7955 + 32
                                            while idx < _7955 + _8434 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8434
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < stor[_4015].field_1 % 128:
                                                mem[idx + _5514 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9876 = mem[64]
                                            mem[mem[64]] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                            if mem[800] > !mem[_9876]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9876] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10102 = mem[_9876]
                                            t = mem[800] + 832
                                            idx = _9876 + 32
                                            while idx < _9876 + _10102 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10102
                            else:
                                if bool(stor[_4015].field_0):
                                    if bool(stor[_4015].field_0) == uint255(uint256(stor[_4015].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5514 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7770 = mem[64]
                                        mem[mem[64]] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7770]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7770] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8230 = mem[_7770]
                                        t = mem[800] + 832
                                        idx = _7770 + 32
                                        while idx < _7770 + _8230 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8230
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7849 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7849]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7849] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8340 = mem[_7849]
                                            t = mem[800] + 832
                                            idx = _7849 + 32
                                            while idx < _7849 + _8340 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8340
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < uint255(uint256(stor[_4015].field_0)) * 0.5:
                                                mem[idx + _5514 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9877 = mem[64]
                                            mem[mem[64]] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5514 + _4016 + _4018 + (uint255(uint256(stor[_4015].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9877]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9877] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10105 = mem[_9877]
                                            t = mem[800] + 832
                                            idx = _9877 + 32
                                            while idx < _9877 + _10105 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10105
                                else:
                                    if bool(stor[_4015].field_0) == stor[_4015].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4015].field_0):
                                        mem[_5514 + _4016 + _4018 + 77] = Mask(248, 8, uint256(stor[_4015].field_0))
                                        _7850 = mem[64]
                                        mem[mem[64]] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                        if mem[800] > !mem[_7850]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7850] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8343 = mem[_7850]
                                        t = mem[800] + 832
                                        idx = _7850 + 32
                                        while idx < _7850 + _8343 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8343
                                    else:
                                        if bool(stor[_4015].field_0) != 1:
                                            _7962 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7962]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7962] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8440 = mem[_7962]
                                            t = mem[800] + 832
                                            idx = _7962 + 32
                                            while idx < _7962 + _8440 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8440
                                        else:
                                            mem[0] = _4015
                                            idx = 0
                                            t = sha3(_4015)
                                            while idx < stor[_4015].field_1 % 128:
                                                mem[idx + _5514 + _4016 + _4018 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9878 = mem[64]
                                            mem[mem[64]] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5514 + _4016 + _4018 + stor[_4015].field_1 % 128 + 77
                                            if mem[800] > !mem[_9878]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9878] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10108 = mem[_9878]
                                            t = mem[800] + 832
                                            idx = _9878 + 32
                                            while idx < _9878 + _10108 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10108
            else:
                u = 0
                t = (50 * idx % 32) + (50 * s)
                while t:
                    if u == -1:
                        revert with 0, 17
                    u = u + 1
                    t = t / 10
                    continue 
                if u > test266151307():
                    revert with 0, 65
                _2377 = mem[64]
                mem[mem[64]] = u
                mem[64] = mem[64] + ceil32(u) + 32
                if not u:
                    v = u
                    t = (50 * idx % 32) + (50 * s)
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if 48 > !(t % 10):
                            revert with 0, 17
                        if v - 1 >= mem[_2377]:
                            revert with 0, 50
                        mem[v + _2377 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    if idx / 32 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    if not 50 * idx / 32:
                        _4115 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4115] = 1
                        mem[_4115 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[0] = mem[448]
                        mem[32] = 16
                        _4136 = sha3(mem[448], 16)
                        _4137 = mem[64]
                        mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                        _4145 = mem[_2377]
                        idx = 0
                        while idx < _4145:
                            mem[idx + _4137 + 64] = mem[idx + _2377 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4137 + _4145 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                        if ceil32(_4145) <= _4145:
                            _5507 = mem[_4115]
                            idx = 0
                            while idx < _5507:
                                mem[idx + _4137 + _4145 + 69] = mem[idx + _4115 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5507 + _4137 + _4145 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5507) <= _5507:
                                if bool(stor[_4136].field_0):
                                    if bool(stor[_4136].field_0) == uint255(uint256(stor[_4136].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5507 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7751 = mem[64]
                                        mem[mem[64]] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7751]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7751] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8155 = mem[_7751]
                                        t = mem[800] + 832
                                        idx = _7751 + 32
                                        while idx < _7751 + _8155 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8155
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7774 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7774]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7774] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8235 = mem[_7774]
                                            t = mem[800] + 832
                                            idx = _7774 + 32
                                            while idx < _7774 + _8235 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8235
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < uint255(uint256(stor[_4136].field_0)) * 0.5:
                                                mem[idx + _5507 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9847 = mem[64]
                                            mem[mem[64]] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9847]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9847] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10015 = mem[_9847]
                                            t = mem[800] + 832
                                            idx = _9847 + 32
                                            while idx < _9847 + _10015 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10015
                                else:
                                    if bool(stor[_4136].field_0) == stor[_4136].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5507 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7775 = mem[64]
                                        mem[mem[64]] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                        if mem[800] > !mem[_7775]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7775] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8238 = mem[_7775]
                                        t = mem[800] + 832
                                        idx = _7775 + 32
                                        while idx < _7775 + _8238 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8238
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7857 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7857]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7857] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8350 = mem[_7857]
                                            t = mem[800] + 832
                                            idx = _7857 + 32
                                            while idx < _7857 + _8350 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8350
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < stor[_4136].field_1 % 128:
                                                mem[idx + _5507 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9848 = mem[64]
                                            mem[mem[64]] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                            if mem[800] > !mem[_9848]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9848] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10018 = mem[_9848]
                                            t = mem[800] + 832
                                            idx = _9848 + 32
                                            while idx < _9848 + _10018 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10018
                            else:
                                if bool(stor[_4136].field_0):
                                    if bool(stor[_4136].field_0) == uint255(uint256(stor[_4136].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5507 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7752 = mem[64]
                                        mem[mem[64]] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7752]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7752] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8160 = mem[_7752]
                                        t = mem[800] + 832
                                        idx = _7752 + 32
                                        while idx < _7752 + _8160 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8160
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7779 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7779]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7779] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8242 = mem[_7779]
                                            t = mem[800] + 832
                                            idx = _7779 + 32
                                            while idx < _7779 + _8242 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8242
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < uint255(uint256(stor[_4136].field_0)) * 0.5:
                                                mem[idx + _5507 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9849 = mem[64]
                                            mem[mem[64]] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5507 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9849]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9849] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10021 = mem[_9849]
                                            t = mem[800] + 832
                                            idx = _9849 + 32
                                            while idx < _9849 + _10021 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10021
                                else:
                                    if bool(stor[_4136].field_0) == stor[_4136].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5507 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7780 = mem[64]
                                        mem[mem[64]] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                        if mem[800] > !mem[_7780]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7780] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8245 = mem[_7780]
                                        t = mem[800] + 832
                                        idx = _7780 + 32
                                        while idx < _7780 + _8245 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8245
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7864 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7864]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7864] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8356 = mem[_7864]
                                            t = mem[800] + 832
                                            idx = _7864 + 32
                                            while idx < _7864 + _8356 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8356
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < stor[_4136].field_1 % 128:
                                                mem[idx + _5507 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9850 = mem[64]
                                            mem[mem[64]] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5507 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                            if mem[800] > !mem[_9850]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9850] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10024 = mem[_9850]
                                            t = mem[800] + 832
                                            idx = _9850 + 32
                                            while idx < _9850 + _10024 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10024
                        else:
                            _5508 = mem[_4115]
                            idx = 0
                            while idx < _5508:
                                mem[idx + _4137 + _4145 + 69] = mem[idx + _4115 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5508 + _4137 + _4145 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5508) <= _5508:
                                if bool(stor[_4136].field_0):
                                    if bool(stor[_4136].field_0) == uint255(uint256(stor[_4136].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5508 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7753 = mem[64]
                                        mem[mem[64]] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7753]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7753] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8165 = mem[_7753]
                                        t = mem[800] + 832
                                        idx = _7753 + 32
                                        while idx < _7753 + _8165 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8165
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7784 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7784]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7784] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8249 = mem[_7784]
                                            t = mem[800] + 832
                                            idx = _7784 + 32
                                            while idx < _7784 + _8249 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8249
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < uint255(uint256(stor[_4136].field_0)) * 0.5:
                                                mem[idx + _5508 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9851 = mem[64]
                                            mem[mem[64]] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9851]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9851] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10027 = mem[_9851]
                                            t = mem[800] + 832
                                            idx = _9851 + 32
                                            while idx < _9851 + _10027 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10027
                                else:
                                    if bool(stor[_4136].field_0) == stor[_4136].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5508 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7785 = mem[64]
                                        mem[mem[64]] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                        if mem[800] > !mem[_7785]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7785] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8252 = mem[_7785]
                                        t = mem[800] + 832
                                        idx = _7785 + 32
                                        while idx < _7785 + _8252 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8252
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7871 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7871]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7871] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8362 = mem[_7871]
                                            t = mem[800] + 832
                                            idx = _7871 + 32
                                            while idx < _7871 + _8362 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8362
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < stor[_4136].field_1 % 128:
                                                mem[idx + _5508 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9852 = mem[64]
                                            mem[mem[64]] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                            if mem[800] > !mem[_9852]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9852] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10030 = mem[_9852]
                                            t = mem[800] + 832
                                            idx = _9852 + 32
                                            while idx < _9852 + _10030 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10030
                            else:
                                if bool(stor[_4136].field_0):
                                    if bool(stor[_4136].field_0) == uint255(uint256(stor[_4136].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5508 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7754 = mem[64]
                                        mem[mem[64]] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7754]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7754] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8170 = mem[_7754]
                                        t = mem[800] + 832
                                        idx = _7754 + 32
                                        while idx < _7754 + _8170 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8170
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7789 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7789]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7789] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8256 = mem[_7789]
                                            t = mem[800] + 832
                                            idx = _7789 + 32
                                            while idx < _7789 + _8256 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8256
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < uint255(uint256(stor[_4136].field_0)) * 0.5:
                                                mem[idx + _5508 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9853 = mem[64]
                                            mem[mem[64]] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5508 + _4137 + _4145 + (uint255(uint256(stor[_4136].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9853]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9853] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10033 = mem[_9853]
                                            t = mem[800] + 832
                                            idx = _9853 + 32
                                            while idx < _9853 + _10033 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10033
                                else:
                                    if bool(stor[_4136].field_0) == stor[_4136].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4136].field_0):
                                        mem[_5508 + _4137 + _4145 + 77] = Mask(248, 8, uint256(stor[_4136].field_0))
                                        _7790 = mem[64]
                                        mem[mem[64]] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                        if mem[800] > !mem[_7790]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7790] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8259 = mem[_7790]
                                        t = mem[800] + 832
                                        idx = _7790 + 32
                                        while idx < _7790 + _8259 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8259
                                    else:
                                        if bool(stor[_4136].field_0) != 1:
                                            _7878 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7878]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7878] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8368 = mem[_7878]
                                            t = mem[800] + 832
                                            idx = _7878 + 32
                                            while idx < _7878 + _8368 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8368
                                        else:
                                            mem[0] = _4136
                                            idx = 0
                                            t = sha3(_4136)
                                            while idx < stor[_4136].field_1 % 128:
                                                mem[idx + _5508 + _4137 + _4145 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9854 = mem[64]
                                            mem[mem[64]] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5508 + _4137 + _4145 + stor[_4136].field_1 % 128 + 77
                                            if mem[800] > !mem[_9854]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9854] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10036 = mem[_9854]
                                            t = mem[800] + 832
                                            idx = _9854 + 32
                                            while idx < _9854 + _10036 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10036
                    else:
                        u = 0
                        t = 50 * idx / 32
                        while t:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            t = t / 10
                            continue 
                        if u > test266151307():
                            revert with 0, 65
                        _5505 = mem[64]
                        mem[mem[64]] = u
                        mem[64] = mem[64] + ceil32(u) + 32
                        if not u:
                            v = u
                            t = 50 * idx / 32
                            while t:
                                if v < 1:
                                    revert with 0, 17
                                if 48 > !(t % 10):
                                    revert with 0, 17
                                if v - 1 >= mem[_5505]:
                                    revert with 0, 50
                                mem[v + _5505 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                                v = v - 1
                                t = t / 10
                                continue 
                            mem[0] = mem[448]
                            mem[32] = 16
                            _7684 = sha3(mem[448], 16)
                            _7685 = mem[64]
                            mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                            _7695 = mem[_2377]
                            idx = 0
                            while idx < _7695:
                                mem[idx + _7685 + 64] = mem[idx + _2377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7685 + _7695 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                            if ceil32(_7695) <= _7695:
                                _9839 = mem[_5505]
                                idx = 0
                                while idx < _9839:
                                    mem[idx + _7685 + _7695 + 69] = mem[idx + _5505 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9839 + _7685 + _7695 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9839) <= _9839:
                                    if bool(stor[_7684].field_0):
                                        if bool(stor[_7684].field_0) == uint255(uint256(stor[_7684].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9839 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11271 = mem[64]
                                            mem[mem[64]] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11271]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11271] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11671 = mem[_11271]
                                            t = mem[800] + 832
                                            idx = _11271 + 32
                                            while idx < _11271 + _11671 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11671
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11290 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11290]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11290] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11751 = mem[_11290]
                                                t = mem[800] + 832
                                                idx = _11290 + 32
                                                while idx < _11290 + _11751 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11751
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < uint255(uint256(stor[_7684].field_0)) * 0.5:
                                                    mem[idx + _9839 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12359 = mem[64]
                                                mem[mem[64]] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12359]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12359] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12519 = mem[_12359]
                                                t = mem[800] + 832
                                                idx = _12359 + 32
                                                while idx < _12359 + _12519 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12519
                                    else:
                                        if bool(stor[_7684].field_0) == stor[_7684].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9839 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11291 = mem[64]
                                            mem[mem[64]] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                            if mem[800] > !mem[_11291]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11291] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11754 = mem[_11291]
                                            t = mem[800] + 832
                                            idx = _11291 + 32
                                            while idx < _11291 + _11754 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11754
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11373 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11373]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11373] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11866 = mem[_11373]
                                                t = mem[800] + 832
                                                idx = _11373 + 32
                                                while idx < _11373 + _11866 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11866
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < stor[_7684].field_1 % 128:
                                                    mem[idx + _9839 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12360 = mem[64]
                                                mem[mem[64]] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                                if mem[800] > !mem[_12360]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12360] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12522 = mem[_12360]
                                                t = mem[800] + 832
                                                idx = _12360 + 32
                                                while idx < _12360 + _12522 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12522
                                else:
                                    if bool(stor[_7684].field_0):
                                        if bool(stor[_7684].field_0) == uint255(uint256(stor[_7684].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9839 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11272 = mem[64]
                                            mem[mem[64]] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11272]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11272] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11676 = mem[_11272]
                                            t = mem[800] + 832
                                            idx = _11272 + 32
                                            while idx < _11272 + _11676 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11676
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11295 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11295]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11295] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11758 = mem[_11295]
                                                t = mem[800] + 832
                                                idx = _11295 + 32
                                                while idx < _11295 + _11758 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11758
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < uint255(uint256(stor[_7684].field_0)) * 0.5:
                                                    mem[idx + _9839 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12361 = mem[64]
                                                mem[mem[64]] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9839 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12361]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12361] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12525 = mem[_12361]
                                                t = mem[800] + 832
                                                idx = _12361 + 32
                                                while idx < _12361 + _12525 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12525
                                    else:
                                        if bool(stor[_7684].field_0) == stor[_7684].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9839 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11296 = mem[64]
                                            mem[mem[64]] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                            if mem[800] > !mem[_11296]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11296] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11761 = mem[_11296]
                                            t = mem[800] + 832
                                            idx = _11296 + 32
                                            while idx < _11296 + _11761 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11761
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11380 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11380]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11380] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11872 = mem[_11380]
                                                t = mem[800] + 832
                                                idx = _11380 + 32
                                                while idx < _11380 + _11872 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11872
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < stor[_7684].field_1 % 128:
                                                    mem[idx + _9839 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12362 = mem[64]
                                                mem[mem[64]] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9839 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                                if mem[800] > !mem[_12362]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12362] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12528 = mem[_12362]
                                                t = mem[800] + 832
                                                idx = _12362 + 32
                                                while idx < _12362 + _12528 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12528
                            else:
                                _9840 = mem[_5505]
                                idx = 0
                                while idx < _9840:
                                    mem[idx + _7685 + _7695 + 69] = mem[idx + _5505 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9840 + _7685 + _7695 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9840) <= _9840:
                                    if bool(stor[_7684].field_0):
                                        if bool(stor[_7684].field_0) == uint255(uint256(stor[_7684].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9840 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11273 = mem[64]
                                            mem[mem[64]] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11273]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11273] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11681 = mem[_11273]
                                            t = mem[800] + 832
                                            idx = _11273 + 32
                                            while idx < _11273 + _11681 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11681
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11300 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11300]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11300] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11765 = mem[_11300]
                                                t = mem[800] + 832
                                                idx = _11300 + 32
                                                while idx < _11300 + _11765 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11765
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < uint255(uint256(stor[_7684].field_0)) * 0.5:
                                                    mem[idx + _9840 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12363 = mem[64]
                                                mem[mem[64]] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12363]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12363] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12531 = mem[_12363]
                                                t = mem[800] + 832
                                                idx = _12363 + 32
                                                while idx < _12363 + _12531 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12531
                                    else:
                                        if bool(stor[_7684].field_0) == stor[_7684].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9840 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11301 = mem[64]
                                            mem[mem[64]] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                            if mem[800] > !mem[_11301]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11301] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11768 = mem[_11301]
                                            t = mem[800] + 832
                                            idx = _11301 + 32
                                            while idx < _11301 + _11768 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11768
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11387 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11387]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11387] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11878 = mem[_11387]
                                                t = mem[800] + 832
                                                idx = _11387 + 32
                                                while idx < _11387 + _11878 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11878
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < stor[_7684].field_1 % 128:
                                                    mem[idx + _9840 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12364 = mem[64]
                                                mem[mem[64]] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                                if mem[800] > !mem[_12364]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12364] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12534 = mem[_12364]
                                                t = mem[800] + 832
                                                idx = _12364 + 32
                                                while idx < _12364 + _12534 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12534
                                else:
                                    if bool(stor[_7684].field_0):
                                        if bool(stor[_7684].field_0) == uint255(uint256(stor[_7684].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9840 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11274 = mem[64]
                                            mem[mem[64]] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11274]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11274] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11686 = mem[_11274]
                                            t = mem[800] + 832
                                            idx = _11274 + 32
                                            while idx < _11274 + _11686 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11686
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11305 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11305]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11305] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11772 = mem[_11305]
                                                t = mem[800] + 832
                                                idx = _11305 + 32
                                                while idx < _11305 + _11772 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11772
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < uint255(uint256(stor[_7684].field_0)) * 0.5:
                                                    mem[idx + _9840 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12365 = mem[64]
                                                mem[mem[64]] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9840 + _7685 + _7695 + (uint255(uint256(stor[_7684].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12365]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12365] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12537 = mem[_12365]
                                                t = mem[800] + 832
                                                idx = _12365 + 32
                                                while idx < _12365 + _12537 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12537
                                    else:
                                        if bool(stor[_7684].field_0) == stor[_7684].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7684].field_0):
                                            mem[_9840 + _7685 + _7695 + 77] = Mask(248, 8, uint256(stor[_7684].field_0))
                                            _11306 = mem[64]
                                            mem[mem[64]] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                            if mem[800] > !mem[_11306]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11306] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11775 = mem[_11306]
                                            t = mem[800] + 832
                                            idx = _11306 + 32
                                            while idx < _11306 + _11775 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11775
                                        else:
                                            if bool(stor[_7684].field_0) != 1:
                                                _11394 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11394]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11394] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11884 = mem[_11394]
                                                t = mem[800] + 832
                                                idx = _11394 + 32
                                                while idx < _11394 + _11884 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11884
                                            else:
                                                mem[0] = _7684
                                                idx = 0
                                                t = sha3(_7684)
                                                while idx < stor[_7684].field_1 % 128:
                                                    mem[idx + _9840 + _7685 + _7695 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12366 = mem[64]
                                                mem[mem[64]] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9840 + _7685 + _7695 + stor[_7684].field_1 % 128 + 77
                                                if mem[800] > !mem[_12366]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12366] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12540 = mem[_12366]
                                                t = mem[800] + 832
                                                idx = _12366 + 32
                                                while idx < _12366 + _12540 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12540
                        else:
                            mem[_5505 + 32 len u] = call.data[calldata.size len u]
                            v = u
                            t = 50 * idx / 32
                            while t:
                                if v < 1:
                                    revert with 0, 17
                                if 48 > !(t % 10):
                                    revert with 0, 17
                                if v - 1 >= mem[_5505]:
                                    revert with 0, 50
                                mem[v + _5505 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                                v = v - 1
                                t = t / 10
                                continue 
                            mem[0] = mem[448]
                            mem[32] = 16
                            _7687 = sha3(mem[448], 16)
                            _7688 = mem[64]
                            mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                            _7696 = mem[_2377]
                            idx = 0
                            while idx < _7696:
                                mem[idx + _7688 + 64] = mem[idx + _2377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7688 + _7696 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                            if ceil32(_7696) <= _7696:
                                _9841 = mem[_5505]
                                idx = 0
                                while idx < _9841:
                                    mem[idx + _7688 + _7696 + 69] = mem[idx + _5505 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9841 + _7688 + _7696 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9841) <= _9841:
                                    if bool(stor[_7687].field_0):
                                        if bool(stor[_7687].field_0) == uint255(uint256(stor[_7687].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9841 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11275 = mem[64]
                                            mem[mem[64]] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11275]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11275] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11691 = mem[_11275]
                                            t = mem[800] + 832
                                            idx = _11275 + 32
                                            while idx < _11275 + _11691 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11691
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11310 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11310]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11310] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11779 = mem[_11310]
                                                t = mem[800] + 832
                                                idx = _11310 + 32
                                                while idx < _11310 + _11779 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11779
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < uint255(uint256(stor[_7687].field_0)) * 0.5:
                                                    mem[idx + _9841 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12367 = mem[64]
                                                mem[mem[64]] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12367]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12367] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12543 = mem[_12367]
                                                t = mem[800] + 832
                                                idx = _12367 + 32
                                                while idx < _12367 + _12543 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12543
                                    else:
                                        if bool(stor[_7687].field_0) == stor[_7687].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9841 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11311 = mem[64]
                                            mem[mem[64]] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                            if mem[800] > !mem[_11311]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11311] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11782 = mem[_11311]
                                            t = mem[800] + 832
                                            idx = _11311 + 32
                                            while idx < _11311 + _11782 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11782
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11401 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11401]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11401] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11890 = mem[_11401]
                                                t = mem[800] + 832
                                                idx = _11401 + 32
                                                while idx < _11401 + _11890 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11890
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < stor[_7687].field_1 % 128:
                                                    mem[idx + _9841 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12368 = mem[64]
                                                mem[mem[64]] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                                if mem[800] > !mem[_12368]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12368] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12546 = mem[_12368]
                                                t = mem[800] + 832
                                                idx = _12368 + 32
                                                while idx < _12368 + _12546 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12546
                                else:
                                    if bool(stor[_7687].field_0):
                                        if bool(stor[_7687].field_0) == uint255(uint256(stor[_7687].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9841 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11276 = mem[64]
                                            mem[mem[64]] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11276]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11276] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11696 = mem[_11276]
                                            t = mem[800] + 832
                                            idx = _11276 + 32
                                            while idx < _11276 + _11696 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11696
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11315 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11315]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11315] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11786 = mem[_11315]
                                                t = mem[800] + 832
                                                idx = _11315 + 32
                                                while idx < _11315 + _11786 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11786
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < uint255(uint256(stor[_7687].field_0)) * 0.5:
                                                    mem[idx + _9841 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12369 = mem[64]
                                                mem[mem[64]] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9841 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12369]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12369] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12549 = mem[_12369]
                                                t = mem[800] + 832
                                                idx = _12369 + 32
                                                while idx < _12369 + _12549 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12549
                                    else:
                                        if bool(stor[_7687].field_0) == stor[_7687].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9841 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11316 = mem[64]
                                            mem[mem[64]] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                            if mem[800] > !mem[_11316]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11316] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11789 = mem[_11316]
                                            t = mem[800] + 832
                                            idx = _11316 + 32
                                            while idx < _11316 + _11789 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11789
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11408 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11408]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11408] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11896 = mem[_11408]
                                                t = mem[800] + 832
                                                idx = _11408 + 32
                                                while idx < _11408 + _11896 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11896
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < stor[_7687].field_1 % 128:
                                                    mem[idx + _9841 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12370 = mem[64]
                                                mem[mem[64]] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9841 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                                if mem[800] > !mem[_12370]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12370] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12552 = mem[_12370]
                                                t = mem[800] + 832
                                                idx = _12370 + 32
                                                while idx < _12370 + _12552 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12552
                            else:
                                _9842 = mem[_5505]
                                idx = 0
                                while idx < _9842:
                                    mem[idx + _7688 + _7696 + 69] = mem[idx + _5505 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9842 + _7688 + _7696 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9842) <= _9842:
                                    if bool(stor[_7687].field_0):
                                        if bool(stor[_7687].field_0) == uint255(uint256(stor[_7687].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9842 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11277 = mem[64]
                                            mem[mem[64]] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11277]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11277] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11701 = mem[_11277]
                                            t = mem[800] + 832
                                            idx = _11277 + 32
                                            while idx < _11277 + _11701 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11701
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11320 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11320]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11320] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11793 = mem[_11320]
                                                t = mem[800] + 832
                                                idx = _11320 + 32
                                                while idx < _11320 + _11793 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11793
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < uint255(uint256(stor[_7687].field_0)) * 0.5:
                                                    mem[idx + _9842 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12371 = mem[64]
                                                mem[mem[64]] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12371]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12371] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12555 = mem[_12371]
                                                t = mem[800] + 832
                                                idx = _12371 + 32
                                                while idx < _12371 + _12555 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12555
                                    else:
                                        if bool(stor[_7687].field_0) == stor[_7687].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9842 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11321 = mem[64]
                                            mem[mem[64]] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                            if mem[800] > !mem[_11321]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11321] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11796 = mem[_11321]
                                            t = mem[800] + 832
                                            idx = _11321 + 32
                                            while idx < _11321 + _11796 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11796
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11415 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11415]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11415] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11902 = mem[_11415]
                                                t = mem[800] + 832
                                                idx = _11415 + 32
                                                while idx < _11415 + _11902 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11902
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < stor[_7687].field_1 % 128:
                                                    mem[idx + _9842 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12372 = mem[64]
                                                mem[mem[64]] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                                if mem[800] > !mem[_12372]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12372] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12558 = mem[_12372]
                                                t = mem[800] + 832
                                                idx = _12372 + 32
                                                while idx < _12372 + _12558 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12558
                                else:
                                    if bool(stor[_7687].field_0):
                                        if bool(stor[_7687].field_0) == uint255(uint256(stor[_7687].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9842 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11278 = mem[64]
                                            mem[mem[64]] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11278]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11278] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11706 = mem[_11278]
                                            t = mem[800] + 832
                                            idx = _11278 + 32
                                            while idx < _11278 + _11706 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11706
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11325 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11325]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11325] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11800 = mem[_11325]
                                                t = mem[800] + 832
                                                idx = _11325 + 32
                                                while idx < _11325 + _11800 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11800
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < uint255(uint256(stor[_7687].field_0)) * 0.5:
                                                    mem[idx + _9842 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12373 = mem[64]
                                                mem[mem[64]] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9842 + _7688 + _7696 + (uint255(uint256(stor[_7687].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12373]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12373] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12561 = mem[_12373]
                                                t = mem[800] + 832
                                                idx = _12373 + 32
                                                while idx < _12373 + _12561 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12561
                                    else:
                                        if bool(stor[_7687].field_0) == stor[_7687].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7687].field_0):
                                            mem[_9842 + _7688 + _7696 + 77] = Mask(248, 8, uint256(stor[_7687].field_0))
                                            _11326 = mem[64]
                                            mem[mem[64]] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                            if mem[800] > !mem[_11326]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11326] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11803 = mem[_11326]
                                            t = mem[800] + 832
                                            idx = _11326 + 32
                                            while idx < _11326 + _11803 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11803
                                        else:
                                            if bool(stor[_7687].field_0) != 1:
                                                _11422 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11422]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11422] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11908 = mem[_11422]
                                                t = mem[800] + 832
                                                idx = _11422 + 32
                                                while idx < _11422 + _11908 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11908
                                            else:
                                                mem[0] = _7687
                                                idx = 0
                                                t = sha3(_7687)
                                                while idx < stor[_7687].field_1 % 128:
                                                    mem[idx + _9842 + _7688 + _7696 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12374 = mem[64]
                                                mem[mem[64]] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9842 + _7688 + _7696 + stor[_7687].field_1 % 128 + 77
                                                if mem[800] > !mem[_12374]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12374] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12564 = mem[_12374]
                                                t = mem[800] + 832
                                                idx = _12374 + 32
                                                while idx < _12374 + _12564 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12564
                else:
                    mem[_2377 + 32 len u] = call.data[calldata.size len u]
                    v = u
                    t = (50 * idx % 32) + (50 * s)
                    while t:
                        if v < 1:
                            revert with 0, 17
                        if 48 > !(t % 10):
                            revert with 0, 17
                        if v - 1 >= mem[_2377]:
                            revert with 0, 50
                        mem[v + _2377 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                        v = v - 1
                        t = t / 10
                        continue 
                    if idx / 32 > 0x51eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851eb851e:
                        revert with 0, 17
                    if not 50 * idx / 32:
                        _4116 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4116] = 1
                        mem[_4116 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                        mem[0] = mem[448]
                        mem[32] = 16
                        _4139 = sha3(mem[448], 16)
                        _4140 = mem[64]
                        mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                        _4147 = mem[_2377]
                        idx = 0
                        while idx < _4147:
                            mem[idx + _4140 + 64] = mem[idx + _2377 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4140 + _4147 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                        if ceil32(_4147) <= _4147:
                            _5509 = mem[_4116]
                            idx = 0
                            while idx < _5509:
                                mem[idx + _4140 + _4147 + 69] = mem[idx + _4116 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5509 + _4140 + _4147 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5509) <= _5509:
                                if bool(stor[_4139].field_0):
                                    if bool(stor[_4139].field_0) == uint255(uint256(stor[_4139].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5509 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7759 = mem[64]
                                        mem[mem[64]] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7759]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7759] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8175 = mem[_7759]
                                        t = mem[800] + 832
                                        idx = _7759 + 32
                                        while idx < _7759 + _8175 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8175
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7794 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7794]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7794] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8263 = mem[_7794]
                                            t = mem[800] + 832
                                            idx = _7794 + 32
                                            while idx < _7794 + _8263 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8263
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < uint255(uint256(stor[_4139].field_0)) * 0.5:
                                                mem[idx + _5509 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9855 = mem[64]
                                            mem[mem[64]] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9855]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9855] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10039 = mem[_9855]
                                            t = mem[800] + 832
                                            idx = _9855 + 32
                                            while idx < _9855 + _10039 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10039
                                else:
                                    if bool(stor[_4139].field_0) == stor[_4139].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5509 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7795 = mem[64]
                                        mem[mem[64]] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                        if mem[800] > !mem[_7795]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7795] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8266 = mem[_7795]
                                        t = mem[800] + 832
                                        idx = _7795 + 32
                                        while idx < _7795 + _8266 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8266
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7885 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7885]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7885] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8374 = mem[_7885]
                                            t = mem[800] + 832
                                            idx = _7885 + 32
                                            while idx < _7885 + _8374 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8374
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < stor[_4139].field_1 % 128:
                                                mem[idx + _5509 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9856 = mem[64]
                                            mem[mem[64]] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                            if mem[800] > !mem[_9856]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9856] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10042 = mem[_9856]
                                            t = mem[800] + 832
                                            idx = _9856 + 32
                                            while idx < _9856 + _10042 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10042
                            else:
                                if bool(stor[_4139].field_0):
                                    if bool(stor[_4139].field_0) == uint255(uint256(stor[_4139].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5509 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7760 = mem[64]
                                        mem[mem[64]] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7760]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7760] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8180 = mem[_7760]
                                        t = mem[800] + 832
                                        idx = _7760 + 32
                                        while idx < _7760 + _8180 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8180
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7799 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7799]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7799] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8270 = mem[_7799]
                                            t = mem[800] + 832
                                            idx = _7799 + 32
                                            while idx < _7799 + _8270 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8270
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < uint255(uint256(stor[_4139].field_0)) * 0.5:
                                                mem[idx + _5509 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9857 = mem[64]
                                            mem[mem[64]] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5509 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9857]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9857] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10045 = mem[_9857]
                                            t = mem[800] + 832
                                            idx = _9857 + 32
                                            while idx < _9857 + _10045 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10045
                                else:
                                    if bool(stor[_4139].field_0) == stor[_4139].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5509 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7800 = mem[64]
                                        mem[mem[64]] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                        if mem[800] > !mem[_7800]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7800] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8273 = mem[_7800]
                                        t = mem[800] + 832
                                        idx = _7800 + 32
                                        while idx < _7800 + _8273 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8273
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7892 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7892]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7892] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8380 = mem[_7892]
                                            t = mem[800] + 832
                                            idx = _7892 + 32
                                            while idx < _7892 + _8380 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8380
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < stor[_4139].field_1 % 128:
                                                mem[idx + _5509 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9858 = mem[64]
                                            mem[mem[64]] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5509 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                            if mem[800] > !mem[_9858]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9858] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10048 = mem[_9858]
                                            t = mem[800] + 832
                                            idx = _9858 + 32
                                            while idx < _9858 + _10048 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10048
                        else:
                            _5510 = mem[_4116]
                            idx = 0
                            while idx < _5510:
                                mem[idx + _4140 + _4147 + 69] = mem[idx + _4116 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5510 + _4140 + _4147 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                            if ceil32(_5510) <= _5510:
                                if bool(stor[_4139].field_0):
                                    if bool(stor[_4139].field_0) == uint255(uint256(stor[_4139].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5510 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7761 = mem[64]
                                        mem[mem[64]] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7761]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7761] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8185 = mem[_7761]
                                        t = mem[800] + 832
                                        idx = _7761 + 32
                                        while idx < _7761 + _8185 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8185
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7804 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7804]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7804] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8277 = mem[_7804]
                                            t = mem[800] + 832
                                            idx = _7804 + 32
                                            while idx < _7804 + _8277 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8277
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < uint255(uint256(stor[_4139].field_0)) * 0.5:
                                                mem[idx + _5510 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9859 = mem[64]
                                            mem[mem[64]] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9859]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9859] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10051 = mem[_9859]
                                            t = mem[800] + 832
                                            idx = _9859 + 32
                                            while idx < _9859 + _10051 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10051
                                else:
                                    if bool(stor[_4139].field_0) == stor[_4139].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5510 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7805 = mem[64]
                                        mem[mem[64]] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                        if mem[800] > !mem[_7805]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7805] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8280 = mem[_7805]
                                        t = mem[800] + 832
                                        idx = _7805 + 32
                                        while idx < _7805 + _8280 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8280
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7899 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7899]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7899] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8386 = mem[_7899]
                                            t = mem[800] + 832
                                            idx = _7899 + 32
                                            while idx < _7899 + _8386 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8386
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < stor[_4139].field_1 % 128:
                                                mem[idx + _5510 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9860 = mem[64]
                                            mem[mem[64]] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                            if mem[800] > !mem[_9860]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9860] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10054 = mem[_9860]
                                            t = mem[800] + 832
                                            idx = _9860 + 32
                                            while idx < _9860 + _10054 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10054
                            else:
                                if bool(stor[_4139].field_0):
                                    if bool(stor[_4139].field_0) == uint255(uint256(stor[_4139].field_0)) * 0.5 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5510 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7762 = mem[64]
                                        mem[mem[64]] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                        mem[64] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                        if mem[800] > !mem[_7762]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7762] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8190 = mem[_7762]
                                        t = mem[800] + 832
                                        idx = _7762 + 32
                                        while idx < _7762 + _8190 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8190
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7809 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7809]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7809] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8284 = mem[_7809]
                                            t = mem[800] + 832
                                            idx = _7809 + 32
                                            while idx < _7809 + _8284 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8284
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < uint255(uint256(stor[_4139].field_0)) * 0.5:
                                                mem[idx + _5510 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9861 = mem[64]
                                            mem[mem[64]] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _5510 + _4140 + _4147 + (uint255(uint256(stor[_4139].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_9861]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9861] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10057 = mem[_9861]
                                            t = mem[800] + 832
                                            idx = _9861 + 32
                                            while idx < _9861 + _10057 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10057
                                else:
                                    if bool(stor[_4139].field_0) == stor[_4139].field_1 % 128 < 32:
                                        revert with 0, 34
                                    if not bool(stor[_4139].field_0):
                                        mem[_5510 + _4140 + _4147 + 77] = Mask(248, 8, uint256(stor[_4139].field_0))
                                        _7810 = mem[64]
                                        mem[mem[64]] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                        mem[64] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                        if mem[800] > !mem[_7810]:
                                            revert with 0, 17
                                        if mem[800] + mem[_7810] > mem[768] - 64:
                                            revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                        _8287 = mem[_7810]
                                        t = mem[800] + 832
                                        idx = _7810 + 32
                                        while idx < _7810 + _8287 + 32:
                                            mem[t] = mem[idx]
                                            t = t + 32
                                            idx = idx + 32
                                            continue 
                                        mem[800] = mem[800] + _8287
                                    else:
                                        if bool(stor[_4139].field_0) != 1:
                                            _7906 = mem[64]
                                            mem[mem[64]] = -mem[64] - 32
                                            mem[64] = 0
                                            if mem[800] > !mem[_7906]:
                                                revert with 0, 17
                                            if mem[800] + mem[_7906] > mem[768] - 64:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            '',
                                                            0,
                                                            uint32('DynamicBuffer: Appending out of '),
                                                            0x626f756e64732e00000000000000000000000000000000000000000000000000
                                            _8392 = mem[_7906]
                                            t = mem[800] + 832
                                            idx = _7906 + 32
                                            while idx < _7906 + _8392 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _8392
                                        else:
                                            mem[0] = _4139
                                            idx = 0
                                            t = sha3(_4139)
                                            while idx < stor[_4139].field_1 % 128:
                                                mem[idx + _5510 + _4140 + _4147 + 77] = uint256(stor[t].field_0)
                                                idx = idx + 32
                                                t = t + 1
                                                continue 
                                            _9862 = mem[64]
                                            mem[mem[64]] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _5510 + _4140 + _4147 + stor[_4139].field_1 % 128 + 77
                                            if mem[800] > !mem[_9862]:
                                                revert with 0, 17
                                            if mem[800] + mem[_9862] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _10060 = mem[_9862]
                                            t = mem[800] + 832
                                            idx = _9862 + 32
                                            while idx < _9862 + _10060 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _10060
                    else:
                        u = 0
                        t = 50 * idx / 32
                        while t:
                            if u == -1:
                                revert with 0, 17
                            u = u + 1
                            t = t / 10
                            continue 
                        if u > test266151307():
                            revert with 0, 65
                        _5506 = mem[64]
                        mem[mem[64]] = u
                        mem[64] = mem[64] + ceil32(u) + 32
                        if not u:
                            v = u
                            t = 50 * idx / 32
                            while t:
                                if v < 1:
                                    revert with 0, 17
                                if 48 > !(t % 10):
                                    revert with 0, 17
                                if v - 1 >= mem[_5506]:
                                    revert with 0, 50
                                mem[v + _5506 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                                v = v - 1
                                t = t / 10
                                continue 
                            mem[0] = mem[448]
                            mem[32] = 16
                            _7690 = sha3(mem[448], 16)
                            _7691 = mem[64]
                            mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                            _7697 = mem[_2377]
                            idx = 0
                            while idx < _7697:
                                mem[idx + _7691 + 64] = mem[idx + _2377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7691 + _7697 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                            if ceil32(_7697) <= _7697:
                                _9843 = mem[_5506]
                                idx = 0
                                while idx < _9843:
                                    mem[idx + _7691 + _7697 + 69] = mem[idx + _5506 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9843 + _7691 + _7697 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9843) <= _9843:
                                    if bool(stor[_7690].field_0):
                                        if bool(stor[_7690].field_0) == uint255(uint256(stor[_7690].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9843 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11279 = mem[64]
                                            mem[mem[64]] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11279]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11279] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11711 = mem[_11279]
                                            t = mem[800] + 832
                                            idx = _11279 + 32
                                            while idx < _11279 + _11711 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11711
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11330 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11330]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11330] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11807 = mem[_11330]
                                                t = mem[800] + 832
                                                idx = _11330 + 32
                                                while idx < _11330 + _11807 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11807
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < uint255(uint256(stor[_7690].field_0)) * 0.5:
                                                    mem[idx + _9843 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12375 = mem[64]
                                                mem[mem[64]] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12375]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12375] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12567 = mem[_12375]
                                                t = mem[800] + 832
                                                idx = _12375 + 32
                                                while idx < _12375 + _12567 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12567
                                    else:
                                        if bool(stor[_7690].field_0) == stor[_7690].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9843 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11331 = mem[64]
                                            mem[mem[64]] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                            if mem[800] > !mem[_11331]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11331] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11810 = mem[_11331]
                                            t = mem[800] + 832
                                            idx = _11331 + 32
                                            while idx < _11331 + _11810 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11810
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11429 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11429]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11429] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11914 = mem[_11429]
                                                t = mem[800] + 832
                                                idx = _11429 + 32
                                                while idx < _11429 + _11914 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11914
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < stor[_7690].field_1 % 128:
                                                    mem[idx + _9843 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12376 = mem[64]
                                                mem[mem[64]] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                                if mem[800] > !mem[_12376]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12376] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12570 = mem[_12376]
                                                t = mem[800] + 832
                                                idx = _12376 + 32
                                                while idx < _12376 + _12570 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12570
                                else:
                                    if bool(stor[_7690].field_0):
                                        if bool(stor[_7690].field_0) == uint255(uint256(stor[_7690].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9843 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11280 = mem[64]
                                            mem[mem[64]] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11280]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11280] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11716 = mem[_11280]
                                            t = mem[800] + 832
                                            idx = _11280 + 32
                                            while idx < _11280 + _11716 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11716
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11335 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11335]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11335] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11814 = mem[_11335]
                                                t = mem[800] + 832
                                                idx = _11335 + 32
                                                while idx < _11335 + _11814 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11814
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < uint255(uint256(stor[_7690].field_0)) * 0.5:
                                                    mem[idx + _9843 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12377 = mem[64]
                                                mem[mem[64]] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9843 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12377]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12377] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12573 = mem[_12377]
                                                t = mem[800] + 832
                                                idx = _12377 + 32
                                                while idx < _12377 + _12573 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12573
                                    else:
                                        if bool(stor[_7690].field_0) == stor[_7690].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9843 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11336 = mem[64]
                                            mem[mem[64]] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                            if mem[800] > !mem[_11336]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11336] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11817 = mem[_11336]
                                            t = mem[800] + 832
                                            idx = _11336 + 32
                                            while idx < _11336 + _11817 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11817
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11436 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11436]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11436] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11920 = mem[_11436]
                                                t = mem[800] + 832
                                                idx = _11436 + 32
                                                while idx < _11436 + _11920 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11920
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < stor[_7690].field_1 % 128:
                                                    mem[idx + _9843 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12378 = mem[64]
                                                mem[mem[64]] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9843 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                                if mem[800] > !mem[_12378]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12378] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12576 = mem[_12378]
                                                t = mem[800] + 832
                                                idx = _12378 + 32
                                                while idx < _12378 + _12576 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12576
                            else:
                                _9844 = mem[_5506]
                                idx = 0
                                while idx < _9844:
                                    mem[idx + _7691 + _7697 + 69] = mem[idx + _5506 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9844 + _7691 + _7697 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9844) <= _9844:
                                    if bool(stor[_7690].field_0):
                                        if bool(stor[_7690].field_0) == uint255(uint256(stor[_7690].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9844 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11281 = mem[64]
                                            mem[mem[64]] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11281]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11281] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11721 = mem[_11281]
                                            t = mem[800] + 832
                                            idx = _11281 + 32
                                            while idx < _11281 + _11721 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11721
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11340 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11340]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11340] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11821 = mem[_11340]
                                                t = mem[800] + 832
                                                idx = _11340 + 32
                                                while idx < _11340 + _11821 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11821
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < uint255(uint256(stor[_7690].field_0)) * 0.5:
                                                    mem[idx + _9844 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12379 = mem[64]
                                                mem[mem[64]] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12379]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12379] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12579 = mem[_12379]
                                                t = mem[800] + 832
                                                idx = _12379 + 32
                                                while idx < _12379 + _12579 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12579
                                    else:
                                        if bool(stor[_7690].field_0) == stor[_7690].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9844 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11341 = mem[64]
                                            mem[mem[64]] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                            if mem[800] > !mem[_11341]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11341] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11824 = mem[_11341]
                                            t = mem[800] + 832
                                            idx = _11341 + 32
                                            while idx < _11341 + _11824 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11824
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11443 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11443]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11443] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11926 = mem[_11443]
                                                t = mem[800] + 832
                                                idx = _11443 + 32
                                                while idx < _11443 + _11926 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11926
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < stor[_7690].field_1 % 128:
                                                    mem[idx + _9844 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12380 = mem[64]
                                                mem[mem[64]] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                                if mem[800] > !mem[_12380]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12380] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12582 = mem[_12380]
                                                t = mem[800] + 832
                                                idx = _12380 + 32
                                                while idx < _12380 + _12582 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12582
                                else:
                                    if bool(stor[_7690].field_0):
                                        if bool(stor[_7690].field_0) == uint255(uint256(stor[_7690].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9844 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11282 = mem[64]
                                            mem[mem[64]] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11282]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11282] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11726 = mem[_11282]
                                            t = mem[800] + 832
                                            idx = _11282 + 32
                                            while idx < _11282 + _11726 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11726
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11345 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11345]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11345] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11828 = mem[_11345]
                                                t = mem[800] + 832
                                                idx = _11345 + 32
                                                while idx < _11345 + _11828 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11828
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < uint255(uint256(stor[_7690].field_0)) * 0.5:
                                                    mem[idx + _9844 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12381 = mem[64]
                                                mem[mem[64]] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9844 + _7691 + _7697 + (uint255(uint256(stor[_7690].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12381]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12381] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12585 = mem[_12381]
                                                t = mem[800] + 832
                                                idx = _12381 + 32
                                                while idx < _12381 + _12585 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12585
                                    else:
                                        if bool(stor[_7690].field_0) == stor[_7690].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7690].field_0):
                                            mem[_9844 + _7691 + _7697 + 77] = Mask(248, 8, uint256(stor[_7690].field_0))
                                            _11346 = mem[64]
                                            mem[mem[64]] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                            if mem[800] > !mem[_11346]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11346] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11831 = mem[_11346]
                                            t = mem[800] + 832
                                            idx = _11346 + 32
                                            while idx < _11346 + _11831 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11831
                                        else:
                                            if bool(stor[_7690].field_0) != 1:
                                                _11450 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11450]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11450] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11932 = mem[_11450]
                                                t = mem[800] + 832
                                                idx = _11450 + 32
                                                while idx < _11450 + _11932 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11932
                                            else:
                                                mem[0] = _7690
                                                idx = 0
                                                t = sha3(_7690)
                                                while idx < stor[_7690].field_1 % 128:
                                                    mem[idx + _9844 + _7691 + _7697 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12382 = mem[64]
                                                mem[mem[64]] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9844 + _7691 + _7697 + stor[_7690].field_1 % 128 + 77
                                                if mem[800] > !mem[_12382]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12382] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12588 = mem[_12382]
                                                t = mem[800] + 832
                                                idx = _12382 + 32
                                                while idx < _12382 + _12588 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12588
                        else:
                            mem[_5506 + 32 len u] = call.data[calldata.size len u]
                            v = u
                            t = 50 * idx / 32
                            while t:
                                if v < 1:
                                    revert with 0, 17
                                if 48 > !(t % 10):
                                    revert with 0, 17
                                if v - 1 >= mem[_5506]:
                                    revert with 0, 50
                                mem[v + _5506 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 2), 10))), 0) - 256
                                v = v - 1
                                t = t / 10
                                continue 
                            mem[0] = mem[448]
                            mem[32] = 16
                            _7693 = sha3(mem[448], 16)
                            _7694 = mem[64]
                            mem[mem[64] + 32] = '<rect width="50" height="50" x="'
                            _7698 = mem[_2377]
                            idx = 0
                            while idx < _7698:
                                mem[idx + _7694 + 64] = mem[idx + _2377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_7694 + _7698 + 64] = 0x2220793d22000000000000000000000000000000000000000000000000000000
                            if ceil32(_7698) <= _7698:
                                _9845 = mem[_5506]
                                idx = 0
                                while idx < _9845:
                                    mem[idx + _7694 + _7698 + 69] = mem[idx + _5506 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9845 + _7694 + _7698 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9845) <= _9845:
                                    if bool(stor[_7693].field_0):
                                        if bool(stor[_7693].field_0) == uint255(uint256(stor[_7693].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9845 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11283 = mem[64]
                                            mem[mem[64]] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11283]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11283] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11731 = mem[_11283]
                                            t = mem[800] + 832
                                            idx = _11283 + 32
                                            while idx < _11283 + _11731 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11731
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11350 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11350]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11350] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11835 = mem[_11350]
                                                t = mem[800] + 832
                                                idx = _11350 + 32
                                                while idx < _11350 + _11835 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11835
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < uint255(uint256(stor[_7693].field_0)) * 0.5:
                                                    mem[idx + _9845 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12383 = mem[64]
                                                mem[mem[64]] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12383]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12383] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12591 = mem[_12383]
                                                t = mem[800] + 832
                                                idx = _12383 + 32
                                                while idx < _12383 + _12591 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12591
                                    else:
                                        if bool(stor[_7693].field_0) == stor[_7693].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9845 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11351 = mem[64]
                                            mem[mem[64]] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                            if mem[800] > !mem[_11351]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11351] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11838 = mem[_11351]
                                            t = mem[800] + 832
                                            idx = _11351 + 32
                                            while idx < _11351 + _11838 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11838
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11457 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11457]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11457] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11938 = mem[_11457]
                                                t = mem[800] + 832
                                                idx = _11457 + 32
                                                while idx < _11457 + _11938 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11938
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < stor[_7693].field_1 % 128:
                                                    mem[idx + _9845 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12384 = mem[64]
                                                mem[mem[64]] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                                if mem[800] > !mem[_12384]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12384] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12594 = mem[_12384]
                                                t = mem[800] + 832
                                                idx = _12384 + 32
                                                while idx < _12384 + _12594 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12594
                                else:
                                    if bool(stor[_7693].field_0):
                                        if bool(stor[_7693].field_0) == uint255(uint256(stor[_7693].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9845 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11284 = mem[64]
                                            mem[mem[64]] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11284]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11284] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11736 = mem[_11284]
                                            t = mem[800] + 832
                                            idx = _11284 + 32
                                            while idx < _11284 + _11736 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11736
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11355 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11355]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11355] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11842 = mem[_11355]
                                                t = mem[800] + 832
                                                idx = _11355 + 32
                                                while idx < _11355 + _11842 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11842
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < uint255(uint256(stor[_7693].field_0)) * 0.5:
                                                    mem[idx + _9845 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12385 = mem[64]
                                                mem[mem[64]] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9845 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12385]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12385] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12597 = mem[_12385]
                                                t = mem[800] + 832
                                                idx = _12385 + 32
                                                while idx < _12385 + _12597 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12597
                                    else:
                                        if bool(stor[_7693].field_0) == stor[_7693].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9845 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11356 = mem[64]
                                            mem[mem[64]] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                            if mem[800] > !mem[_11356]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11356] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11845 = mem[_11356]
                                            t = mem[800] + 832
                                            idx = _11356 + 32
                                            while idx < _11356 + _11845 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11845
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11464 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11464]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11464] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11944 = mem[_11464]
                                                t = mem[800] + 832
                                                idx = _11464 + 32
                                                while idx < _11464 + _11944 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11944
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < stor[_7693].field_1 % 128:
                                                    mem[idx + _9845 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12386 = mem[64]
                                                mem[mem[64]] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9845 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                                if mem[800] > !mem[_12386]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12386] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12600 = mem[_12386]
                                                t = mem[800] + 832
                                                idx = _12386 + 32
                                                while idx < _12386 + _12600 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12600
                            else:
                                _9846 = mem[_5506]
                                idx = 0
                                while idx < _9846:
                                    mem[idx + _7694 + _7698 + 69] = mem[idx + _5506 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_9846 + _7694 + _7698 + 69] = 0x222066696c6c3d22000000000000000000000000000000000000000000000000
                                if ceil32(_9846) <= _9846:
                                    if bool(stor[_7693].field_0):
                                        if bool(stor[_7693].field_0) == uint255(uint256(stor[_7693].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9846 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11285 = mem[64]
                                            mem[mem[64]] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11285]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11285] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11741 = mem[_11285]
                                            t = mem[800] + 832
                                            idx = _11285 + 32
                                            while idx < _11285 + _11741 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11741
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11360 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11360]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11360] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11849 = mem[_11360]
                                                t = mem[800] + 832
                                                idx = _11360 + 32
                                                while idx < _11360 + _11849 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11849
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < uint255(uint256(stor[_7693].field_0)) * 0.5:
                                                    mem[idx + _9846 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12387 = mem[64]
                                                mem[mem[64]] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12387]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12387] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12603 = mem[_12387]
                                                t = mem[800] + 832
                                                idx = _12387 + 32
                                                while idx < _12387 + _12603 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12603
                                    else:
                                        if bool(stor[_7693].field_0) == stor[_7693].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9846 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11361 = mem[64]
                                            mem[mem[64]] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                            if mem[800] > !mem[_11361]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11361] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11852 = mem[_11361]
                                            t = mem[800] + 832
                                            idx = _11361 + 32
                                            while idx < _11361 + _11852 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11852
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11471 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11471]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11471] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11950 = mem[_11471]
                                                t = mem[800] + 832
                                                idx = _11471 + 32
                                                while idx < _11471 + _11950 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11950
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < stor[_7693].field_1 % 128:
                                                    mem[idx + _9846 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12388 = mem[64]
                                                mem[mem[64]] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                                if mem[800] > !mem[_12388]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12388] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12606 = mem[_12388]
                                                t = mem[800] + 832
                                                idx = _12388 + 32
                                                while idx < _12388 + _12606 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12606
                                else:
                                    if bool(stor[_7693].field_0):
                                        if bool(stor[_7693].field_0) == uint255(uint256(stor[_7693].field_0)) * 0.5 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9846 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11286 = mem[64]
                                            mem[mem[64]] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                            mem[64] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                            if mem[800] > !mem[_11286]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11286] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11746 = mem[_11286]
                                            t = mem[800] + 832
                                            idx = _11286 + 32
                                            while idx < _11286 + _11746 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11746
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11365 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11365]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11365] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11856 = mem[_11365]
                                                t = mem[800] + 832
                                                idx = _11365 + 32
                                                while idx < _11365 + _11856 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11856
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < uint255(uint256(stor[_7693].field_0)) * 0.5:
                                                    mem[idx + _9846 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12389 = mem[64]
                                                mem[mem[64]] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + -mem[64] + 45
                                                mem[64] = _9846 + _7694 + _7698 + (uint255(uint256(stor[_7693].field_0)) * 0.5) + 77
                                                if mem[800] > !mem[_12389]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12389] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12609 = mem[_12389]
                                                t = mem[800] + 832
                                                idx = _12389 + 32
                                                while idx < _12389 + _12609 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12609
                                    else:
                                        if bool(stor[_7693].field_0) == stor[_7693].field_1 % 128 < 32:
                                            revert with 0, 34
                                        if not bool(stor[_7693].field_0):
                                            mem[_9846 + _7694 + _7698 + 77] = Mask(248, 8, uint256(stor[_7693].field_0))
                                            _11366 = mem[64]
                                            mem[mem[64]] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                            mem[64] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                            if mem[800] > !mem[_11366]:
                                                revert with 0, 17
                                            if mem[800] + mem[_11366] > mem[768] - 64:
                                                revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                            _11859 = mem[_11366]
                                            t = mem[800] + 832
                                            idx = _11366 + 32
                                            while idx < _11366 + _11859 + 32:
                                                mem[t] = mem[idx]
                                                t = t + 32
                                                idx = idx + 32
                                                continue 
                                            mem[800] = mem[800] + _11859
                                        else:
                                            if bool(stor[_7693].field_0) != 1:
                                                _11478 = mem[64]
                                                mem[mem[64]] = -mem[64] - 32
                                                mem[64] = 0
                                                if mem[800] > !mem[_11478]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_11478] > mem[768] - 64:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                '',
                                                                0,
                                                                uint32('DynamicBuffer: Appending out of '),
                                                                0x626f756e64732e00000000000000000000000000000000000000000000000000
                                                _11956 = mem[_11478]
                                                t = mem[800] + 832
                                                idx = _11478 + 32
                                                while idx < _11478 + _11956 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _11956
                                            else:
                                                mem[0] = _7693
                                                idx = 0
                                                t = sha3(_7693)
                                                while idx < stor[_7693].field_1 % 128:
                                                    mem[idx + _9846 + _7694 + _7698 + 77] = uint256(stor[t].field_0)
                                                    idx = idx + 32
                                                    t = t + 1
                                                    continue 
                                                _12390 = mem[64]
                                                mem[mem[64]] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + -mem[64] + 45
                                                mem[64] = _9846 + _7694 + _7698 + stor[_7693].field_1 % 128 + 77
                                                if mem[800] > !mem[_12390]:
                                                    revert with 0, 17
                                                if mem[800] + mem[_12390] > mem[768] - 64:
                                                    revert with 0, 'DynamicBuffer: Appending out of bounds.'
                                                _12612 = mem[_12390]
                                                t = mem[800] + 832
                                                idx = _12390 + 32
                                                while idx < _12390 + _12612 + 32:
                                                    mem[t] = mem[idx]
                                                    t = t + 32
                                                    idx = idx + 32
                                                    continue 
                                                mem[800] = mem[800] + _12612
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if idx > -9:
            revert with 0, 17
        idx = idx + 8
        continue 
    mem[0] = arg1
    mem[32] = 18
    if not stor18[arg1]:
        _1112 = mem[64]
        mem[64] = mem[64] + 512
        mem[_1112] = 461
        mem[_1112 + 32 len 461] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667
        _1114 = mem[64]
        mem[mem[64] + 32] = '<svg version="1.0" xmlns="http:/'
        mem[mem[64] + 64] = '/www.w3.org/2000/svg" width="160'
        mem[mem[64] + 96] = '0.000000pt" height="800.000000pt'
        mem[mem[64] + 128] = '" viewBox="0 0 1600.000000 800.0'
        mem[mem[64] + 160] = '00000" preserveAspectRatio="xMid'
        mem[mem[64] + 192] = 'YMid meet" xmlns:xlink="http://w'
        mem[mem[64] + 224] = 'ww.w3.org/1999/xlink"> <g transf'
        mem[mem[64] + 256] = 'orm="translate(0.000000,800.0000'
        mem[mem[64] + 288] = '00) scale(0.100000,-0.100000)" f'
        mem[mem[64] + 320] = 'ill="#000000" stroke="none"> <pa'
        mem[mem[64] + 352] = 'th d="M0 4000 l0 -4000 8000 0 80'
        mem[mem[64] + 384] = '00 0 0 4000 0 4000 -8000 0 -8000'
        mem[mem[64] + 416] = 0x20302030202d343030307a222066696c6c3d2200000000000000000000000000
        if bool(stor16[stor17[arg1]].field_0):
            if bool(stor16[stor17[arg1]].field_0) == uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor16[stor17[arg1]].field_0):
                mem[mem[64] + 435] = Mask(248, 8, uint256(stor16[stor17[arg1]].field_0))
                mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
                _1126 = mem[800]
                mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
                if ceil32(_1126) <= _1126:
                    mem[_1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                    mem[_1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900] = 0
                    _2382 = mem[64]
                    mem[64] = _1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900
                    mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900] = 32
                    _2459 = mem[_2382]
                    mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 932] = mem[_2382]
                    mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 964 len ceil32(_2459)] = mem[_2382 + 32 len ceil32(_2459)]
                    if ceil32(_2459) > _2459:
                        mem[_2459 + _1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 964] = 0
                    return memory
                      from mem[64]
                       len ceil32(_2459) + _1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 964
                mem[_1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
                mem[_1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                mem[_1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900] = 0
                _2384 = mem[64]
                mem[64] = _1126 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900
                mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 900] = 32
                _2461 = mem[_2384]
                mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 932] = mem[_2384]
                mem[_1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 964 len ceil32(_2461)] = mem[_2384 + 32 len ceil32(_2461)]
                if ceil32(_2461) > _2461:
                    mem[_2461 + _1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 964] = 0
                return memory
                  from mem[64]
                   len ceil32(_2461) + _1126 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 964
            if bool(stor16[stor17[arg1]].field_0) != 1:
                mem[0] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
                _1128 = mem[800]
                mem[4 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
                if ceil32(_1128) <= _1128:
                    mem[_1128 + 4 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                    mem[_1128 + 465] = 0
                    _2388 = mem[64]
                    mem[64] = _1128 + 465
                    mem[_1128 + 465] = 32
                    _2465 = mem[_2388]
                    mem[_1128 + 497] = mem[_2388]
                    mem[_1128 + 529 len ceil32(_2465)] = mem[_2388 + 32 len ceil32(_2465)]
                    if ceil32(_2465) > _2465:
                        mem[_2465 + _1128 + 529] = 0
                    return 32, mem[_1128 + 497 len ceil32(_2465) + 32]
                mem[_1128 + 4] = 0
                mem[_1128 + 4 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                mem[_1128 + 465] = 0
                _2390 = mem[64]
                mem[64] = _1128 + 465
                mem[_1128 + 465] = 32
                _2467 = mem[_2390]
                mem[_1128 + 497] = mem[_2390]
                mem[_1128 + 529 len ceil32(_2467)] = mem[_2390 + 32 len ceil32(_2467)]
                if ceil32(_2467) > _2467:
                    mem[_2467 + _1128 + 529] = 0
                return 32, mem[_1128 + 497 len ceil32(_2467) + 32]
            mem[0] = sha3(sub_42fc0d1e[arg1], 16)
            idx = 0
            s = 0
            while idx < uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5:
                mem[idx + mem[64] + 435] = uint256(stor16[stor17[arg1]][s].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
            _1755 = mem[800]
            mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
            if ceil32(_1755) <= _1755:
                _2385 = mem[_1112]
                mem[_1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[_1112])] = mem[_1112 + 32 len ceil32(mem[_1112])]
                if ceil32(_2385) <= _2385:
                    _4027 = mem[64]
                    mem[64] = _2385 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
                    mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
                    _4119 = mem[_4027]
                    mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4027]
                    mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4119)] = mem[_4027 + 32 len ceil32(_4119)]
                    if ceil32(_4119) > _4119:
                        mem[_4119 + _2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
                    return memory
                      from mem[64]
                       len ceil32(_4119) + _2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
                mem[_2385 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
                _4028 = mem[64]
                mem[64] = _2385 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
                mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
                _4120 = mem[_4028]
                mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4028]
                mem[_2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4120)] = mem[_4028 + 32 len ceil32(_4120)]
                if ceil32(_4120) > _4120:
                    mem[_4120 + _2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
                return memory
                  from mem[64]
                   len ceil32(_4120) + _2385 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
            mem[_1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
            _2386 = mem[_1112]
            mem[_1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[_1112])] = mem[_1112 + 32 len ceil32(mem[_1112])]
            if ceil32(_2386) <= _2386:
                _4029 = mem[64]
                mem[64] = _2386 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
                mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
                _4121 = mem[_4029]
                mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4029]
                mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4121)] = mem[_4029 + 32 len ceil32(_4121)]
                if ceil32(_4121) > _4121:
                    mem[_4121 + _2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
                return memory
                  from mem[64]
                   len ceil32(_4121) + _2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
            mem[_2386 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
            _4030 = mem[64]
            mem[64] = _2386 + _1755 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
            mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
            _4122 = mem[_4030]
            mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4030]
            mem[_2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4122)] = mem[_4030 + 32 len ceil32(_4122)]
            if ceil32(_4122) > _4122:
                mem[_4122 + _2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4122) + _2386 + _1755 + _1114 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
        if bool(stor16[stor17[arg1]].field_0) == stor16[stor17[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor16[stor17[arg1]].field_0):
            mem[mem[64] + 435] = Mask(248, 8, uint256(stor16[stor17[arg1]].field_0))
            mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
            _1129 = mem[800]
            mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
            if ceil32(_1129) <= _1129:
                mem[_1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                mem[_1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 900] = 0
                _2392 = mem[64]
                mem[64] = _1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 900
                mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 900] = 32
                _2469 = mem[_2392]
                mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 932] = mem[_2392]
                mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 964 len ceil32(_2469)] = mem[_2392 + 32 len ceil32(_2469)]
                if ceil32(_2469) > _2469:
                    mem[_2469 + _1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 964] = 0
                return memory
                  from mem[64]
                   len ceil32(_2469) + _1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 964
            mem[_1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
            mem[_1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
            mem[_1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 900] = 0
            _2394 = mem[64]
            mem[64] = _1129 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 900
            mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 900] = 32
            _2471 = mem[_2394]
            mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 932] = mem[_2394]
            mem[_1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 964 len ceil32(_2471)] = mem[_2394 + 32 len ceil32(_2471)]
            if ceil32(_2471) > _2471:
                mem[_2471 + _1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 964] = 0
            return memory
              from mem[64]
               len ceil32(_2471) + _1129 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 964
        if bool(stor16[stor17[arg1]].field_0) != 1:
            mem[0] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
            _1132 = mem[800]
            mem[4 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
            if ceil32(_1132) <= _1132:
                mem[_1132 + 4 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
                mem[_1132 + 465] = 0
                _2398 = mem[64]
                mem[64] = _1132 + 465
                mem[_1132 + 465] = 32
                _2475 = mem[_2398]
                mem[_1132 + 497] = mem[_2398]
                mem[_1132 + 529 len ceil32(_2475)] = mem[_2398 + 32 len ceil32(_2475)]
                if ceil32(_2475) > _2475:
                    mem[_2475 + _1132 + 529] = 0
                return 32, mem[_1132 + 497 len ceil32(_2475) + 32]
            mem[_1132 + 4] = 0
            mem[_1132 + 4 len 480] = 0x2f3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a222f3e3c2f673e3c2f737667, mem[_1112 + 493 len 19]
            mem[_1132 + 465] = 0
            _2400 = mem[64]
            mem[64] = _1132 + 465
            mem[_1132 + 465] = 32
            _2477 = mem[_2400]
            mem[_1132 + 497] = mem[_2400]
            mem[_1132 + 529 len ceil32(_2477)] = mem[_2400 + 32 len ceil32(_2477)]
            if ceil32(_2477) > _2477:
                mem[_2477 + _1132 + 529] = 0
            return 32, mem[_1132 + 497 len ceil32(_2477) + 32]
        mem[0] = sha3(sub_42fc0d1e[arg1], 16)
        idx = 0
        s = 0
        while idx < stor16[stor17[arg1]].field_1 % 128:
            mem[idx + mem[64] + 435] = uint256(stor16[stor17[arg1]][s].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
        _1760 = mem[800]
        mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
        if ceil32(_1760) <= _1760:
            _2395 = mem[_1112]
            mem[_1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[_1112])] = mem[_1112 + 32 len ceil32(mem[_1112])]
            if ceil32(_2395) <= _2395:
                _4047 = mem[64]
                mem[64] = _2395 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
                mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
                _4123 = mem[_4047]
                mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4047]
                mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4123)] = mem[_4047 + 32 len ceil32(_4123)]
                if ceil32(_4123) > _4123:
                    mem[_4123 + _2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
                return memory
                  from mem[64]
                   len ceil32(_4123) + _2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
            mem[_2395 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
            _4048 = mem[64]
            mem[64] = _2395 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
            mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
            _4124 = mem[_4048]
            mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4048]
            mem[_2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4124)] = mem[_4048 + 32 len ceil32(_4124)]
            if ceil32(_4124) > _4124:
                mem[_4124 + _2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4124) + _2395 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
        mem[_1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
        _2396 = mem[_1112]
        mem[_1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[_1112])] = mem[_1112 + 32 len ceil32(mem[_1112])]
        if ceil32(_2396) <= _2396:
            _4049 = mem[64]
            mem[64] = _2396 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
            mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
            _4125 = mem[_4049]
            mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4049]
            mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4125)] = mem[_4049 + 32 len ceil32(_4125)]
            if ceil32(_4125) > _4125:
                mem[_4125 + _2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4125) + _2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
        mem[_2396 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
        _4050 = mem[64]
        mem[64] = _2396 + _1760 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
        mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
        _4126 = mem[_4050]
        mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4050]
        mem[_2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4126)] = mem[_4050 + 32 len ceil32(_4126)]
        if ceil32(_4126) > _4126:
            mem[_4126 + _2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
        return memory
          from mem[64]
           len ceil32(_4126) + _2396 + _1760 + _1114 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
    _1113 = mem[64]
    mem[64] = mem[64] + 2240
    mem[_1113] = 2201
    mem[_1113 + 32 len 2201] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667
    _1115 = mem[64]
    mem[mem[64] + 32] = '<svg version="1.0" xmlns="http:/'
    mem[mem[64] + 64] = '/www.w3.org/2000/svg" width="160'
    mem[mem[64] + 96] = '0.000000pt" height="800.000000pt'
    mem[mem[64] + 128] = '" viewBox="0 0 1600.000000 800.0'
    mem[mem[64] + 160] = '00000" preserveAspectRatio="xMid'
    mem[mem[64] + 192] = 'YMid meet" xmlns:xlink="http://w'
    mem[mem[64] + 224] = 'ww.w3.org/1999/xlink"> <g transf'
    mem[mem[64] + 256] = 'orm="translate(0.000000,800.0000'
    mem[mem[64] + 288] = '00) scale(0.100000,-0.100000)" f'
    mem[mem[64] + 320] = 'ill="#000000" stroke="none"> <pa'
    mem[mem[64] + 352] = 'th d="M0 4000 l0 -4000 8000 0 80'
    mem[mem[64] + 384] = '00 0 0 4000 0 4000 -8000 0 -8000'
    mem[mem[64] + 416] = 0x20302030202d343030307a222066696c6c3d2200000000000000000000000000
    if bool(stor16[stor17[arg1]].field_0):
        if bool(stor16[stor17[arg1]].field_0) == uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor16[stor17[arg1]].field_0):
            mem[mem[64] + 435] = Mask(248, 8, uint256(stor16[stor17[arg1]].field_0))
            mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
            _1127 = mem[800]
            mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
            if ceil32(_1127) <= _1127:
                mem[_1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
                mem[_1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640] = 0
                _2402 = mem[64]
                mem[64] = _1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640
                mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640] = 32
                _2479 = mem[_2402]
                mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2672] = mem[_2402]
                mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2704 len ceil32(_2479)] = mem[_2402 + 32 len ceil32(_2479)]
                if ceil32(_2479) > _2479:
                    mem[_2479 + _1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2704] = 0
                return memory
                  from mem[64]
                   len ceil32(_2479) + _1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 2704
            mem[_1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
            mem[_1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
            mem[_1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640] = 0
            _2404 = mem[64]
            mem[64] = _1127 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640
            mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2640] = 32
            _2481 = mem[_2404]
            mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2672] = mem[_2404]
            mem[_1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2704 len ceil32(_2481)] = mem[_2404 + 32 len ceil32(_2481)]
            if ceil32(_2481) > _2481:
                mem[_2481 + _1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 2704] = 0
            return memory
              from mem[64]
               len ceil32(_2481) + _1127 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 2704
        if bool(stor16[stor17[arg1]].field_0) != 1:
            mem[0] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
            _1130 = mem[800]
            mem[4 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
            if ceil32(_1130) <= _1130:
                mem[_1130 + 4 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
                mem[_1130 + 2205] = 0
                _2408 = mem[64]
                mem[64] = _1130 + 2205
                mem[_1130 + 2205] = 32
                _2485 = mem[_2408]
                mem[_1130 + 2237] = mem[_2408]
                mem[_1130 + 2269 len ceil32(_2485)] = mem[_2408 + 32 len ceil32(_2485)]
                if ceil32(_2485) > _2485:
                    mem[_2485 + _1130 + 2269] = 0
                return 32, mem[_1130 + 2237 len ceil32(_2485) + 32]
            mem[_1130 + 4] = 0
            mem[_1130 + 4 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
            mem[_1130 + 2205] = 0
            _2410 = mem[64]
            mem[64] = _1130 + 2205
            mem[_1130 + 2205] = 32
            _2487 = mem[_2410]
            mem[_1130 + 2237] = mem[_2410]
            mem[_1130 + 2269 len ceil32(_2487)] = mem[_2410 + 32 len ceil32(_2487)]
            if ceil32(_2487) > _2487:
                mem[_2487 + _1130 + 2269] = 0
            return 32, mem[_1130 + 2237 len ceil32(_2487) + 32]
        mem[0] = sha3(sub_42fc0d1e[arg1], 16)
        idx = 0
        s = 0
        while idx < uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5:
            mem[idx + mem[64] + 435] = uint256(stor16[stor17[arg1]][s].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
        _1765 = mem[800]
        mem[mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
        if ceil32(_1765) <= _1765:
            _2405 = mem[_1113]
            mem[_1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[_1113])] = mem[_1113 + 32 len ceil32(mem[_1113])]
            if ceil32(_2405) <= _2405:
                _4067 = mem[64]
                mem[64] = _2405 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
                mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
                _4127 = mem[_4067]
                mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4067]
                mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4127)] = mem[_4067 + 32 len ceil32(_4127)]
                if ceil32(_4127) > _4127:
                    mem[_4127 + _2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
                return memory
                  from mem[64]
                   len ceil32(_4127) + _2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
            mem[_2405 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
            _4068 = mem[64]
            mem[64] = _2405 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
            mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
            _4128 = mem[_4068]
            mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4068]
            mem[_2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4128)] = mem[_4068 + 32 len ceil32(_4128)]
            if ceil32(_4128) > _4128:
                mem[_4128 + _2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4128) + _2405 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
        mem[_1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
        _2406 = mem[_1113]
        mem[_1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439 len ceil32(mem[_1113])] = mem[_1113 + 32 len ceil32(mem[_1113])]
        if ceil32(_2406) <= _2406:
            _4069 = mem[64]
            mem[64] = _2406 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
            mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
            _4129 = mem[_4069]
            mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4069]
            mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4129)] = mem[_4069 + 32 len ceil32(_4129)]
            if ceil32(_4129) > _4129:
                mem[_4129 + _2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4129) + _2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
        mem[_2406 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 0
        _4070 = mem[64]
        mem[64] = _2406 + _1765 + mem[64] + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439
        mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 439] = 32
        _4130 = mem[_4070]
        mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 471] = mem[_4070]
        mem[_2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503 len ceil32(_4130)] = mem[_4070 + 32 len ceil32(_4130)]
        if ceil32(_4130) > _4130:
            mem[_4130 + _2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + 503] = 0
        return memory
          from mem[64]
           len ceil32(_4130) + _2406 + _1765 + _1115 + (uint255(uint256(stor16[stor17[arg1]].field_0)) * 0.5) + -mem[64] + 503
    if bool(stor16[stor17[arg1]].field_0) == stor16[stor17[arg1]].field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor16[stor17[arg1]].field_0):
        mem[mem[64] + 435] = Mask(248, 8, uint256(stor16[stor17[arg1]].field_0))
        mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
        _1131 = mem[800]
        mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
        if ceil32(_1131) <= _1131:
            mem[_1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
            mem[_1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 2640] = 0
            _2412 = mem[64]
            mem[64] = _1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 2640
            mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2640] = 32
            _2489 = mem[_2412]
            mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2672] = mem[_2412]
            mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2704 len ceil32(_2489)] = mem[_2412 + 32 len ceil32(_2489)]
            if ceil32(_2489) > _2489:
                mem[_2489 + _1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2704] = 0
            return memory
              from mem[64]
               len ceil32(_2489) + _1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 2704
        mem[_1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
        mem[_1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
        mem[_1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 2640] = 0
        _2414 = mem[64]
        mem[64] = _1131 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 2640
        mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2640] = 32
        _2491 = mem[_2414]
        mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2672] = mem[_2414]
        mem[_1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2704 len ceil32(_2491)] = mem[_2414 + 32 len ceil32(_2491)]
        if ceil32(_2491) > _2491:
            mem[_2491 + _1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 2704] = 0
        return memory
          from mem[64]
           len ceil32(_2491) + _1131 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 2704
    if bool(stor16[stor17[arg1]].field_0) != 1:
        mem[0] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
        _1133 = mem[800]
        mem[4 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
        if ceil32(_1133) <= _1133:
            mem[_1133 + 4 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
            mem[_1133 + 2205] = 0
            _2418 = mem[64]
            mem[64] = _1133 + 2205
            mem[_1133 + 2205] = 32
            _2495 = mem[_2418]
            mem[_1133 + 2237] = mem[_2418]
            mem[_1133 + 2269 len ceil32(_2495)] = mem[_2418 + 32 len ceil32(_2495)]
            if ceil32(_2495) > _2495:
                mem[_2495 + _1133 + 2269] = 0
            return 32, mem[_1133 + 2237 len ceil32(_2495) + 32]
        mem[_1133 + 4] = 0
        mem[_1133 + 4 len 2208] = 0x3e3c67207472616e73666f726d3d227472616e736c61746528302e3030303030302c3830302e30303030303029207363616c6528302e3130303030302c2d302e31303030303029222066696c6c3d222346354635463522207374726f6b653d226e6f6e65223e203c7061746820643d224d313437323020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313437363020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313438303020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a204d313534343020383930206c30202d313130202d3131302030202d31313020302030202d3131302030202d3131302031313020302031313020302030202d3232302030202d323230203131302030203131302030203020323230203020323230203131302030203131302030203020313130203020313130202d3131302030202d3131302030203020313130203020313130202d3131302030202d31313020302030202d3131307a206d323030202d3230206c30202d3131302031313020302031313020302030202d39302030202d3930202d3131302030202d31313020302030202d3232302030202d323230202d39302030202d39302030203020323230203020323230202d3131302030202d313130203020302039302030203930203131302030203131302030203020313130203020313130203930203020393020302030202d3131307a204d313534383020383530206c30202d313130202d3131302030202d31313020302030202d37302030202d37302031313020302031313020302030202d3232302030202d3232302037302030203730203020302032323020302032323020313130203020313130203020302037302030203730202d3131302030202d3131302030203020313130203020313130202d37302030202d373020302030202d3131307a206d313230202d3230206c30202d3131302031313020302031313020302030202d35302030202d3530202d3131302030202d31313020302030202d3232302030202d323230202d35302030202d35302030203020323230203020323230202d3131302030202d313130203020302035302030203530203131302030203131302030203020313130203020313130203530203020353020302030202d3131307a204d313535323020383130206c30202d313130202d3131302030202d31313020302030202d33302030202d33302031313020302031313020302030202d3232302030202d3232302033302030203330203020302032323020302032323020313130203020313130203020302033302030203330202d3131302030202d3131302030203020313130203020313130202d33302030202d333020302030202d3131307a206d3430202d3230206c30202d31313020313130203020633637203020313130202d3420313130202d31302030202d36202d3433202d3130202d313130202d3130206c2d31313020302030202d323230206330202d313430202d34202d323230202d3130202d323230202d362030202d3130203830202d313020323230206c3020323230202d313130203020632d36372030202d3131302034202d3131302031302030203620343320313020313130203130206c31313020302030203131302063302036372034203131302031302031313020362030203130202d3433203130202d3131307a222f3e3c2f673e3c2f737667, mem[_1113 + 2233 len 7]
        mem[_1133 + 2205] = 0
        _2420 = mem[64]
        mem[64] = _1133 + 2205
        mem[_1133 + 2205] = 32
        _2497 = mem[_2420]
        mem[_1133 + 2237] = mem[_2420]
        mem[_1133 + 2269 len ceil32(_2497)] = mem[_2420 + 32 len ceil32(_2497)]
        if ceil32(_2497) > _2497:
            mem[_2497 + _1133 + 2269] = 0
        return 32, mem[_1133 + 2237 len ceil32(_2497) + 32]
    mem[0] = sha3(sub_42fc0d1e[arg1], 16)
    idx = 0
    s = 0
    while idx < stor16[stor17[arg1]].field_1 % 128:
        mem[idx + mem[64] + 435] = uint256(stor16[stor17[arg1]][s].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 435] = 0x3c2f673e00000000000000000000000000000000000000000000000000000000
    _1770 = mem[800]
    mem[mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[800])] = mem[832 len ceil32(mem[800])]
    if ceil32(_1770) <= _1770:
        _2415 = mem[_1113]
        mem[_1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[_1113])] = mem[_1113 + 32 len ceil32(mem[_1113])]
        if ceil32(_2415) <= _2415:
            _4087 = mem[64]
            mem[64] = _2415 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
            mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
            _4131 = mem[_4087]
            mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4087]
            mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4131)] = mem[_4087 + 32 len ceil32(_4131)]
            if ceil32(_4131) > _4131:
                mem[_4131 + _2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
            return memory
              from mem[64]
               len ceil32(_4131) + _2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
        mem[_2415 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
        _4088 = mem[64]
        mem[64] = _2415 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
        mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
        _4132 = mem[_4088]
        mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4088]
        mem[_2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4132)] = mem[_4088 + 32 len ceil32(_4132)]
        if ceil32(_4132) > _4132:
            mem[_4132 + _2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
        return memory
          from mem[64]
           len ceil32(_4132) + _2415 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
    mem[_1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
    _2416 = mem[_1113]
    mem[_1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439 len ceil32(mem[_1113])] = mem[_1113 + 32 len ceil32(mem[_1113])]
    if ceil32(_2416) <= _2416:
        _4089 = mem[64]
        mem[64] = _2416 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
        mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
        _4133 = mem[_4089]
        mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4089]
        mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4133)] = mem[_4089 + 32 len ceil32(_4133)]
        if ceil32(_4133) > _4133:
            mem[_4133 + _2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
        return memory
          from mem[64]
           len ceil32(_4133) + _2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
    mem[_2416 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439] = 0
    _4090 = mem[64]
    mem[64] = _2416 + _1770 + mem[64] + stor16[stor17[arg1]].field_1 % 128 + 439
    mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 439] = 32
    _4134 = mem[_4090]
    mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 471] = mem[_4090]
    mem[_2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503 len ceil32(_4134)] = mem[_4090 + 32 len ceil32(_4134)]
    if ceil32(_4134) > _4134:
        mem[_4134 + _2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + 503] = 0
    return memory
      from mem[64]
       len ceil32(_4134) + _2416 + _1770 + _1115 + stor16[stor17[arg1]].field_1 % 128 + -mem[64] + 503
}



}
