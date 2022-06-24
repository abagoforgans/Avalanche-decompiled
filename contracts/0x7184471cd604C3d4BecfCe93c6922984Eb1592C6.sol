contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const getMaxSupply = 5000


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
uint256 sub_e8fec3f4;
uint256 sub_02aae9f6;
uint256 sub_744dab38;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint8 mintEnabled;
uint8 sub_0a656450; offset 8
uint256 stor13; offset 8
array of uint256 stor14;
array of struct stor15;
uint256 sub_de1e83fe;

function sub_02aae9f6(?) {
    return sub_02aae9f6
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_0a656450(?) {
    return bool(sub_0a656450)
}

function isMinted(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function isWhiteListed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function getMintEnabled() {
    return bool(mintEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_744dab38(?) {
    return sub_744dab38
}

function owner() {
    return owner
}

function sub_de1e83fe(?) {
    return sub_de1e83fe
}

function sub_e8fec3f4(?) {
    return sub_e8fec3f4
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

function sub_5996ce0f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_02aae9f6 = arg1
}

function sub_5d82cf6e(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_744dab38 = arg1
}

function setMintEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintEnabled = uint8(arg1)
}

function setWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
}

function setMaxMintPerAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e8fec3f4 = arg1
}

function removeWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
}

function sub_818668d7(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = Mask(248, 0, bool(arg1))
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

function totalSupply() {
    idx = 1
    s = 0
    while idx <= 5000:
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    return s
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
        if not stor5[stor2[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_86d8953a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
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
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while uint255(stor14.length.field_1) + 31 / 32 > idx:
                stor14[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor14.length) == stor14.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor14[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor14.length = 0
            idx = 0
            while stor14.length.field_1 % 128 + 31 / 32 > idx:
                stor14[idx].field_0 = 0
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
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor15[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor15.length = 0
            idx = 0
            while uint255(stor15.length.field_1) + 31 / 32 > idx:
                stor15[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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

function sub_77830dca(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _745 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
        mem[_745] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_745 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
        mem[_745 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
        mem[s] = _745
        idx = idx + 32
        s = s + 32
        continue 
    if not mintEnabled:
        revert with 0, 'Mint must be active'
    _740 = mem[96]
    if mem[96] <= 0:
        revert with 0, 'need to mint at least 1 NFT'
    if not msg.sender:
        revert with 0, 'ERC721: balance query for the zero address'
    mem[0] = msg.sender
    mem[32] = 3
    if balanceOf[address(msg.sender)] > -mem[96] - 1:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] + mem[96] > sub_e8fec3f4:
        revert with 0, 'Over Max Mint per Address'
    if mem[96] != mem[floor32(('cd', 4).length) + 97]:
        revert with 0, 'Parameter is incorrect'
    if sub_0a656450:
        if sub_744dab38 and mem[96] > -1 / sub_744dab38:
            revert with 'NH{q', 17
        if sub_744dab38 * mem[96] != msg.value:
            revert with 0, 'insufficient fund'
        idx = 0
        while idx < _740:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] > 5000:
                revert with 0, 'invalid tokenId'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            if ownerOf[mem[(32 * idx) + 128]]:
                revert with 0, 'tokenId already exists'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1129 = mem[(32 * idx) + 128]
            _1131 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1131] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1129]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = _1129
            mem[32] = 2
            ownerOf[_1129] = msg.sender
            emit Transfer(0, msg.sender, _1129);
            if ext_code.size(msg.sender) <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 6
                _1174 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]]
                if bool(stor6[mem[(32 * idx) + 128]].field_0):
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == uint255(stor6[mem[(32 * idx) + 128]].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1174:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1174) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1174 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1174 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == stor6[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1174:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1174) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1174 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1174 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _1129
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_1131 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _1129, 128, 0
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
                _1517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1517] == Mask(32, 224, mem[_1517])
                if Mask(32, 224, mem[_1517]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 6
                _1589 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]]
                if bool(stor6[mem[(32 * idx) + 128]].field_0):
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == uint255(stor6[mem[(32 * idx) + 128]].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1589:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1589) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1589 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1589 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == stor6[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1589:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1589) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1589 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1589 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 12
            stor12[mem[(32 * idx) + 128]] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1110 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = msg.sender
        emit 0x491b0ce0: mem[mem[64] len _1110 + (32 * mem[96]) + -mem[64] + 96]
    else:
        mem[0] = msg.sender
        mem[32] = 11
        if not stor11[address(msg.sender)]:
            revert with 0, 'Not in whitelist'
        if sub_02aae9f6 and mem[96] > -1 / sub_02aae9f6:
            revert with 'NH{q', 17
        if msg.value < sub_02aae9f6 * mem[96]:
            revert with 0, 'insufficient fund'
        idx = 0
        while idx < _740:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] > 5000:
                revert with 0, 'invalid tokenId'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            if ownerOf[mem[(32 * idx) + 128]]:
                revert with 0, 'tokenId already exists'
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1128 = mem[(32 * idx) + 128]
            _1130 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1130] = 0
            if not msg.sender:
                revert with 0, 'ERC721: mint to the zero address'
            if ownerOf[_1128]:
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(msg.sender)] > -2:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)]++
            mem[0] = _1128
            mem[32] = 2
            ownerOf[_1128] = msg.sender
            emit Transfer(0, msg.sender, _1128);
            if ext_code.size(msg.sender) <= 0:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 6
                _1171 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]]
                if bool(stor6[mem[(32 * idx) + 128]].field_0):
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == uint255(stor6[mem[(32 * idx) + 128]].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1171:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1171) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1171 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1171 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == stor6[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1171:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1171) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1171 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1171 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            else:
                mem[mem[64]] = 0x150b7a0200000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = _1128
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                s = 0
                while s < 0:
                    mem[mem[64] + s + 164] = mem[_1130 + s + 32]
                    s = s + 32
                    continue 
                require ext_code.size(msg.sender)
                call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args msg.sender, 0, _1128, 128, 0
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
                _1511 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1511] == Mask(32, 224, mem[_1511])
                if Mask(32, 224, mem[_1511]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                if not ownerOf[mem[(32 * idx) + 128]]:
                    revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 6
                _1585 = mem[mem[(32 * idx) + floor32(('cd', 4).length) + 129]]
                if bool(stor6[mem[(32 * idx) + 128]].field_0):
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == uint255(stor6[mem[(32 * idx) + 128]].field_1) < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1585:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1585) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1585 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1585 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (uint255(stor6[mem[(32 * idx) + 128]].field_1) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                else:
                    if bool(stor6[mem[(32 * idx) + 128]].field_0) == stor6[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                        revert with 'NH{q', 34
                    mem[0] = sha3(mem[(32 * idx) + 128], 6)
                    if not _1585:
                        stor6[mem[(32 * idx) + 128]].field_0 = 0
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                    else:
                        stor6[mem[(32 * idx) + 128]].field_0 = (2 * _1585) + 1
                        s = sha3(sha3(mem[(32 * idx) + 128], 6))
                        t = mem[(32 * idx) + floor32(('cd', 4).length) + 129] + 32
                        while mem[(32 * idx) + floor32(('cd', 4).length) + 129] + _1585 + 32 > t:
                            stor[s] = mem[t]
                            s = s + 1
                            t = t + 32
                            continue 
                        s = sha3(sha3(mem[(32 * idx) + 128], 6)) + (Mask(251, 0, _1585 + 31) >> 5)
                        while sha3(sha3(mem[(32 * idx) + 128], 6)) + (stor6[mem[(32 * idx) + 128]].field_1 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 12
            stor12[mem[(32 * idx) + 128]] = 1
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1108 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = msg.sender
        emit 0x491b0ce0: mem[mem[64] len _1108 + (32 * mem[96]) + -mem[64] + 96]
}



}
