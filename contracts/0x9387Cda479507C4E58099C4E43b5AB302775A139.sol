contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const walletLimit = 20

const sub_6caae832(?) = 10

const sub_d22768ff(?) = 125 * 10^16

const maxSupply = 5678


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
address owner;
uint256 root;
array of uint256 stor8;
uint8 stor9;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
mapping of uint256 sub_93ecb0c6;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;
address stor22;
address stor23;
address stor24;

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

function buyable() {
    return bool(uint8(stor9))
}

function owner() {
    return owner
}

function sub_93ecb0c6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_93ecb0c6[address(arg1)]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function root() {
    return root
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

function totalSupply() {
    if stor10 < 100:
        revert with 'NH{q', 17
    if stor10 - 100 > -stor11 - 1:
        revert with 'NH{q', 17
    return (stor10 + stor11 - 100)
}

function sub_9e0b6c43(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor9) = not bool(uint8(stor9)) or Mask(248, 8, uint256(stor9))
}

function royaltyInfo(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 and 500 > -1 / arg2:
        revert with 'NH{q', 17
    return stor12, 500 * arg2 / 10000
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

function setRoyalties(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Royalties: new recipient is the zero address'
    stor12 = arg1
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

function ownerMint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor11 > -arg2 - 1:
        revert with 'NH{q', 17
    if stor11 + arg2 > 100:
        revert with 0, 'Exceeds total supply'
    idx = 0
    while idx < arg2:
        if stor11 > -2:
            revert with 'NH{q', 17
        stor11++
        if not arg1:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor11]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        mem[0] = stor11
        mem[32] = 2
        ownerOf[stor11] = arg1
        emit Transfer(0, arg1, stor11);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if sub_93ecb0c6[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_93ecb0c6[address(arg1)] += arg2
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

function publicMint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if tx.origin != msg.sender:
        revert with 0, 'Not allowed origin'
    if not uint8(stor9):
        revert with 0, 'Sale not active'
    if arg1 > 10:
        revert with 0, 'Many request'
    if arg1 and 125 * 10^16 > -1 / arg1:
        revert with 'NH{q', 17
    if msg.value < 125 * 10^16 * arg1:
        revert with 0, 'Insufficient value'
    if stor10 > -arg1 - 1:
        revert with 'NH{q', 17
    if stor10 + arg1 > 5678:
        revert with 0, 'Exceeds total supply'
    if sub_93ecb0c6[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_93ecb0c6[address(msg.sender)] + arg1 > 20:
        revert with 0, 'Exceeds allowance'
    if sub_93ecb0c6[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_93ecb0c6[address(msg.sender)] += arg1
    idx = 0
    while idx < arg1:
        if stor10 > -2:
            revert with 'NH{q', 17
        stor10++
        if not msg.sender:
            revert with 0, 'ERC721: mint to the zero address'
        if ownerOf[stor10]:
            revert with 0, 'ERC721: token already minted'
        if balanceOf[address(msg.sender)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)]++
        mem[0] = stor10
        mem[32] = 2
        ownerOf[stor10] = msg.sender
        emit Transfer(0, msg.sender, stor10);
        if idx == -1:
            revert with 'NH{q', 17
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

function withdrawToTeam() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) > 0
    if eth.balance(this.address) and 14 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor14 with:
       value 14 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 20 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor15 with:
       value 20 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 10 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor16 with:
       value 10 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 10 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor17 with:
       value 10 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 10 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor18 with:
       value 10 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 7 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor19 with:
       value 7 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 3 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor20 with:
       value 3 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 2 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor21 with:
       value 2 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 2 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor22 with:
       value 2 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 2 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor23 with:
       value 2 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    if eth.balance(this.address) and 5 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor24 with:
       value 5 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
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



}
