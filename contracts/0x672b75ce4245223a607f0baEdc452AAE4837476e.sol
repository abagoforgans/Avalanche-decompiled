contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
address owner;
array of struct stor1;
array of struct stor2;
uint256 mintAmount;
uint256 multiplier;
uint256 cap;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor809;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function multiplier() {
    return multiplier
}

function cap() {
    return cap
}

function mintAmount() {
    return mintAmount
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor809[address(arg1)][address(arg2)])
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

function setMintAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mintAmount = arg1
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor809[address(msg.sender)][address(arg1)] = uint8(arg2)
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

function adminWithdraw() {
    if 0x9b14624a80e8c40aefa604be8cba683b2ce987cd != msg.sender:
        if 0x1e4f1275bb041586d7bec44d2e3e4f30e0da7ba4 != msg.sender:
            if 0xe1811ec49f493afb1f4b42e3ef4a3b9d62d9a01b != msg.sender:
                require msg.sender == owner
    call 0x9b14624a80e8c40aefa604be8cba683b2ce987cd with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x1e4f1275bb041586d7bec44d2e3e4f30e0da7ba4 with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    call 0xe1811ec49f493afb1f4b42e3ef4a3b9d62d9a01b with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
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
        if not stor809[stor806[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
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
            if not stor809[stor806[arg3]][address(msg.sender)]:
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
            if not stor809[stor806[arg3]][address(msg.sender)]:
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

function sub_d4126279(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3 % 16777216
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg1 < 20
    require arg2 < 20
    require msg.value >= mintAmount
    if arg1 >= 20:
        revert with 'NH{q', 50
    if arg2 >= 20:
        revert with 'NH{q', 50
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
            if 31 < uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
                idx = ceil32(ceil32(arg4.length)) + 225
                s = 0
                while ceil32(ceil32(arg4.length)) + uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
            if 31 < stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
                idx = ceil32(ceil32(arg4.length)) + 225
                s = 0
                while ceil32(ceil32(arg4.length)) + stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    require not address(stor[(2 * arg2) + (40 * arg1) + 7].field_24)
    require arg4.length == 1
    require 0 >= arg4.length
    revert with 'NH{q', 50
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
            if not stor809[stor806[arg3]][address(msg.sender)]:
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

function sub_3b265715(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3 % 16777216
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg1 < 20
    require arg2 < 20
    if arg1 >= 20:
        revert with 'NH{q', 50
    if arg2 >= 20:
        revert with 'NH{q', 50
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
            if 31 < uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
                idx = ceil32(ceil32(arg4.length)) + 225
                s = 0
                while ceil32(ceil32(arg4.length)) + uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
            if 31 < stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
                idx = ceil32(ceil32(arg4.length)) + 225
                s = 0
                while ceil32(ceil32(arg4.length)) + stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 + 193 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    require address(stor[(2 * arg2) + (40 * arg1) + 7].field_24) == msg.sender
    if arg1 >= 20:
        revert with 'NH{q', 50
    if arg2 >= 20:
        revert with 'NH{q', 50
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor[(2 * arg2) + (40 * arg1) + 6].field_0) = 0
            idx = 0
            while uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * arg2) + (40 * arg1) + 6)].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)][].field_0) = Array(len=arg4.length, data=arg4[all])
        else:
            uint256(stor[(2 * arg2) + (40 * arg1) + 6].field_0) = 0
            idx = 0
            while stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3((2 * arg2) + (40 * arg1) + 6)].field_0) = 0
                idx = idx + 1
                continue 
    if arg1 >= 20:
        revert with 'NH{q', 50
    if arg2 >= 20:
        revert with 'NH{q', 50
    stor[(2 * arg2) + (40 * arg1) + 7].field_0 % 16777216 = arg3 % 16777216
    emit 0xf9e0ac59: Array(len=arg4.length, data=arg4[all]), arg3 << 232, msg.sender, arg1, arg2
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                        mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
                    mem[idx + 32] = uint256(stor1[s].field_256)
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                        mem[idx + 32] = uint256(stor2[s].field_256)
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
                    mem[idx + 32] = uint256(stor2[s].field_256)
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
                    mem[idx + 32] = uint256(stor2[s].field_256)
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

function tiles(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg1 < 20
    require arg2 < 20
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
            if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
                if 31 >= uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
                    mem[128] = 256 * Mask(248, 0, stor[(2 * arg2) + (40 * arg1) + 6].field_8)
                else:
                    mem[128] = uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)].field_0)
                    idx = 128
                    s = 0
                    while uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
                if 31 >= stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor[(2 * arg2) + (40 * arg1) + 6].field_8)
                else:
                    mem[128] = uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)].field_0)
                    idx = 128
                    s = 0
                    while stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1)), data=mem[128 len ceil32(uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1))]), 
               stor[(2 * arg2) + (40 * arg1) + 7].field_0 % 16777216,
               address(stor[(2 * arg2) + (40 * arg1) + 7].field_24)
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0):
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
            if 31 >= uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1):
                mem[128] = 256 * Mask(248, 0, stor[(2 * arg2) + (40 * arg1) + 6].field_8)
            else:
                mem[128] = uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)].field_0)
                idx = 128
                s = 0
                while uint255(stor[(2 * arg2) + (40 * arg1) + 6].field_1) + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor[(2 * arg2) + (40 * arg1) + 6].field_0) == stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
            if 31 >= stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor[(2 * arg2) + (40 * arg1) + 6].field_8)
            else:
                mem[128] = uint256(stor[sha3((2 * arg2) + (40 * arg1) + 6)].field_0)
                idx = 128
                s = 0
                while stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3((2 * arg2) + (40 * arg1) + 6) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor[(2 * arg2) + (40 * arg1) + 6].field_0 % 128, data=mem[128 len ceil32(stor[(2 * arg2) + (40 * arg1) + 6].field_1 % 128)]), 
           stor[(2 * arg2) + (40 * arg1) + 7].field_0 % 16777216,
           address(stor[(2 * arg2) + (40 * arg1) + 7].field_24)
}



}
