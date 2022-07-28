contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_SUPPLY = 9999


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 stor7;
array of uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 sub_bb20b543;
uint8 sub_8e70d274; offset 8
uint8 sub_e94d75f3; offset 16
uint256 stor12; offset 16
uint256 stor12; offset 8
uint256 stor12;
mapping of uint256 stor13;
uint32 stor14; offset 160
address stor14;
address stor15;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
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

function sub_8e70d274(?) {
    return bool(sub_8e70d274)
}

function sub_bb20b543(?) {
    return bool(sub_bb20b543)
}

function sub_e94d75f3(?) {
    return bool(sub_e94d75f3)
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

function totalSupply() {
    if stor7 < 1:
        revert with 'NH{q', 17
    return (stor7 - 1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function togglePreSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor12.field_8) = Mask(248, 0, not bool(sub_8e70d274))
}

function togglePublicSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor12.field_16) = Mask(240, 0, not bool(sub_e94d75f3))
}

function sub_99800185(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12.field_0) = not bool(sub_bb20b543) or Mask(248, 8, uint256(stor12.field_0))
}

function sub_0c153b49(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor15 = address(arg1)
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and stor14.field_160 % 16777216 > -1 / arg2:
        revert with 'NH{q', 17
    return address(stor14.field_0), arg2 * stor14.field_160 % 16777216 / 10000
}

function withdrawFunds() {
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

function sub_c6e6c871(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 % 16777216 > 10000:
        revert with 0, 'Royalty too high.'
    stor14.field_160 % 16777216 = arg2 % 16777216
    address(stor14.field_0) = address(arg1)
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
    if Mask(32, 224, arg1) == *U Z:
        return True
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

function ownerMint(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor7 + arg1 >= 9999:
        revert with 0, 'Exceeds total supply'
    idx = 0
    while idx < arg1:
        stor7++
        if stor13[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor13[address(msg.sender)]++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor7
        mem[32] = 2
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, stor7);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function publicSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'Not allowed origin'
    if not sub_e94d75f3:
        revert with 0, 'Publicsale haven't started'
    if stor7 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor7 + arg1 >= 9999:
        revert with 0, 'Exceeds total supply'
    if arg1 >= 10:
        revert with 0, 'Exceeds allowance'
    if stor11 and arg1 > -1 / stor11:
        revert with 'NH{q', 17
    if msg.value < stor11 * arg1:
        revert with 0, 'Not enough money'
    idx = 0
    while idx < arg1:
        stor7++
        if stor13[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor13[address(msg.sender)]++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor7
        mem[32] = 2
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, stor7);
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
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 + 31 / 32 > idx:
                stor8[idx].field_0 = 0
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
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function preSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'Not allowed origin'
    if not sub_8e70d274:
        revert with 0, 'Presale haven't started'
    if stor7 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor7 + arg1 >= 9999:
        revert with 0, 'Exceeds total supply'
    if arg1 <= 1:
        if arg1 and stor10 > -1 / arg1:
            revert with 'NH{q', 17
        if msg.value < arg1 * stor10:
            revert with 0, 'Not enough money'
        mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(stor15)
        staticcall stor15.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _14 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
        _15 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _15
        require _14 + (32 * _15) + 32 <= return_data.size
        idx = 0
        s = _14 + 128
        t = ceil32(return_data.size) + 128
        while idx < _15:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        while idx < _15:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _84 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(stor15)
            call stor15.0x4878f78f with:
                 gas gas_remaining wei
                args _84
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_93] == bool(mem[_93])
            if mem[_93]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _105 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42966c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _105
            require ext_code.size(stor15)
            call stor15.burn(uint256 arg1) with:
                 gas gas_remaining wei
                args _105
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(s) == 255:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = uint8(s) + 1
            continue 
    else:
        if stor10 < 25 * 10^16:
            revert with 'NH{q', 17
        if stor10 - 25 * 10^16 and arg1 > -1 / stor10 - 25 * 10^16:
            revert with 'NH{q', 17
        if msg.value < (-25 * 10^16 * arg1) + (stor10 * arg1):
            revert with 0, 'Not enough money'
        mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(stor15)
        staticcall stor15.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _19 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
        _21 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _21
        require _19 + (32 * _21) + 32 <= return_data.size
        idx = 0
        s = _19 + 128
        t = ceil32(return_data.size) + 128
        while idx < _21:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        while idx < _21:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _87 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(stor15)
            call stor15.0x4878f78f with:
                 gas gas_remaining wei
                args _87
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_96] == bool(mem[_96])
            if mem[_96]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _107 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42966c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _107
            require ext_code.size(stor15)
            call stor15.burn(uint256 arg1) with:
                 gas gas_remaining wei
                args _107
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(s) == 255:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = uint8(s) + 1
            continue 
    if uint8(s) <= 0:
        revert with 0, 'You have not Silver Pass'
    if uint8(s) and 5 > 255 / uint8(s):
        revert with 'NH{q', 17
    if uint8(5 * uint8(s)) < arg1:
        revert with 0, 'You dont have enough mint pass'
    idx = 0
    while idx < arg1:
        stor7++
        if stor13[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor13[address(msg.sender)]++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor7
        mem[32] = 2
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, stor7);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_67418fc2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'Not allowed origin'
    if not sub_bb20b543:
        revert with 0, 'OG sale haven't started'
    if arg1 <= 0:
        revert with 0, 'Quantity must be gretaer than 0'
    if stor7 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor7 + arg1 >= 9999:
        revert with 0, 'Exceeds total supply'
    if arg1 <= 1:
        if arg1 and stor9 > -1 / arg1:
            revert with 'NH{q', 17
        if msg.value < arg1 * stor9:
            revert with 0, 'Not enough money'
        mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(stor15)
        staticcall stor15.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _16 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
        _17 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _17
        require _16 + (32 * _17) + 32 <= return_data.size
        idx = 0
        s = _16 + 128
        t = ceil32(return_data.size) + 128
        while idx < _17:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        while idx < _17:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _86 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(stor15)
            call stor15.0x4878f78f with:
                 gas gas_remaining wei
                args _86
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_95] == bool(mem[_95])
            if not mem[_95]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _107 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42966c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _107
            require ext_code.size(stor15)
            call stor15.burn(uint256 arg1) with:
                 gas gas_remaining wei
                args _107
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(s) == 255:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = uint8(s) + 1
            continue 
    else:
        if stor9 < 25 * 10^16:
            revert with 'NH{q', 17
        if stor9 - 25 * 10^16 and arg1 > -1 / stor9 - 25 * 10^16:
            revert with 'NH{q', 17
        if msg.value < (-25 * 10^16 * arg1) + (stor9 * arg1):
            revert with 0, 'Not enough money'
        mem[96] = 0x8462151c00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        require ext_code.size(stor15)
        staticcall stor15.tokensOfOwner(address arg1) with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _21 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
        _23 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
        if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _23
        require _21 + (32 * _23) + 32 <= return_data.size
        idx = 0
        s = _21 + 128
        t = ceil32(return_data.size) + 128
        while idx < _23:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        while idx < _23:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _89 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(stor15)
            call stor15.0x4878f78f with:
                 gas gas_remaining wei
                args _89
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _98 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_98] == bool(mem[_98])
            if not mem[_98]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _109 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64]] = 0x42966c6800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _109
            require ext_code.size(stor15)
            call stor15.burn(uint256 arg1) with:
                 gas gas_remaining wei
                args _109
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if uint8(s) == 255:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = uint8(s) + 1
            continue 
    if uint8(s) <= 0:
        revert with 0, 'You have not Golden Pass'
    if uint8(s) and 5 > 255 / uint8(s):
        revert with 'NH{q', 17
    if uint8(5 * uint8(s)) < arg1:
        revert with 0, 'You dont have enough mint pass'
    idx = 0
    while idx < arg1:
        stor7++
        if stor13[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        stor13[address(msg.sender)]++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor7]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor7
        mem[32] = 2
        ownerOf[stor7] = msg.sender
        emit Transfer(0, msg.sender, stor7);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
