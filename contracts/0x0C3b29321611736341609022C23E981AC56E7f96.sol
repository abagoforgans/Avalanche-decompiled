contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const MAX_PLANETS = 8888


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
array of uint256 items;
address owner;
array of uint256 stor8;
mapping of uint256 stor9;
mapping of struct stor10;

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

function items(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < items.length
    return items[arg1]
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function sub_4994abe1(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = sha3(arg1, 9)
    mem[ceil32(ceil32(arg2.length)) + 97] = uint256(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0)
    return memory
      from ceil32(ceil32(arg2.length)) + 97
       len 32
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

function sub_3db12d03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=4, data='game')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    require items.length < 8888
    items.length++
    items[items.length] = items.length
    if not address(arg1):
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor6.length]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[stor6.length] = address(arg1)
    emit Transfer(0, address(arg1), items.length);
    return items.length
}

function tokensOfOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 'NH{q', 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    s = 0
    idx = 0
    while idx < items.length:
        mem[0] = idx
        mem[32] = 2
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            s = s
            idx = idx + 1
            continue 
        if s >= balanceOf[address(arg1)]:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        s = s + 1
        idx = idx + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_4e4f31ed(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=14, data='metadataSetter')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor9', 9)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], ext_call.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256] = arg3
}

function sub_ee1855b0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == owner
    if bool(stor8.length):
        if bool(stor8.length) == uint255(stor8.length.field_1) < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor8[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while uint255(stor8.length.field_1) + 31 / 32 > idx:
                uint256(stor8[idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor8.length) == stor8.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            uint256(stor8[].field_0) = Array(len=arg1.length, data=arg1[all])
        else:
            stor8.length = 0
            idx = 0
            while stor8.length.field_1 % 128 + 31 / 32 > idx:
                uint256(stor8[idx].field_0) = 0
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
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
        call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                        mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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
                    mem[idx + 32] = uint256(stor0[s].field_256)
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

function sub_61e44630(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307() or ceil32(ceil32(arg3.length)) + 98 < 97:
        revert with 'NH{q', 65
    require arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(0x7273a2b25b506ced8b60eb3aa1eae661a888b412)
    staticcall 0x7273a2b25b506ced8b60eb3aa1eae661a888b412.0xac8932b5 with:
            gas gas_remaining wei
           args Array(len=14, data='metadataSetter')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require msg.sender == ext_call.return_data[12 len 20]
    if bool(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0):
        if bool(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0) == uint255(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_1) < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256][].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0) = 0
            idx = 0
            while uint255(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_1) + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0) == stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg3.length:
            uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256][].field_0) = Array(len=arg3.length, data=arg3[all])
        else:
            uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_0) = 0
            idx = 0
            while stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))][Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, -(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256, arg3.length) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg2.length)) + (8 * ceil32(ceil32(arg2.length))) + 256) << (8 * ceil32(arg2.length)) - 256][idx].field_0) = 0
                idx = idx + 1
                continue 
}

function sub_22654667(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    mem[0] = arg1
    mem[32] = 10
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = sha3(arg1, 10)
    if ceil32(arg2.length) <= arg2.length:
        _144 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
            if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1) < 32:
                revert with 'NH{q', 34
            mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1)) + 129
            mem[ceil32(ceil32(arg2.length)) + 97] = uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1)
            if bool(stor[_144].field_0):
                if bool(stor[_144].field_0) == uint255(stor[_144].field_1) < 32:
                    revert with 'NH{q', 34
                if not uint255(stor[_144].field_1):
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_144].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_144].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_144].field_1))]
                    if ceil32(uint255(stor[_144].field_1)) > uint255(stor[_144].field_1):
                        mem[mem[64] + uint255(stor[_144].field_1) + 64] = 0
                else:
                    if 31 >= uint255(stor[_144].field_1):
                        mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_144].field_8)
                    else:
                        mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_144)].field_0)
                        idx = ceil32(ceil32(arg2.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg2.length)) + uint255(stor[_144].field_1) + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_144) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_144].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_144].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_144].field_1))]
                    if ceil32(uint255(stor[_144].field_1)) > uint255(stor[_144].field_1):
                        mem[mem[64] + uint255(stor[_144].field_1) + 64] = 0
            else:
                if bool(stor[_144].field_0) == stor[_144].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                if not stor[_144].field_1 % 128:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_144].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_144].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_144].field_1))]
                    if ceil32(uint255(stor[_144].field_1)) > uint255(stor[_144].field_1):
                        mem[mem[64] + uint255(stor[_144].field_1) + 64] = 0
                else:
                    if 31 >= stor[_144].field_1 % 128:
                        mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_144].field_8)
                    else:
                        mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_144)].field_0)
                        idx = ceil32(ceil32(arg2.length)) + 129
                        s = 0
                        while ceil32(ceil32(arg2.length)) + stor[_144].field_1 % 128 + 97 > idx:
                            mem[idx + 32] = uint256(stor[s + sha3(_144) + 1].field_0)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = uint255(stor[_144].field_1)
                    mem[mem[64] + 64 len ceil32(uint255(stor[_144].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_144].field_1))]
                    if ceil32(uint255(stor[_144].field_1)) > uint255(stor[_144].field_1):
                        mem[mem[64] + uint255(stor[_144].field_1) + 64] = 0
            return Array(len=2 * Mask(256, -1, uint255(stor[_144].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_144].field_1))]), 
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
        if bool(stor[_144].field_0):
            if bool(stor[_144].field_0) == uint255(stor[_144].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[_144].field_1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_144].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_144].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_144].field_1 % 128)]
                if ceil32(stor[_144].field_1 % 128) > stor[_144].field_1 % 128:
                    mem[mem[64] + stor[_144].field_1 % 128 + 64] = 0
            else:
                if 31 >= uint255(stor[_144].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_144].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_144)].field_0)
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor[_144].field_1) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_144) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_144].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_144].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_144].field_1 % 128)]
                if ceil32(stor[_144].field_1 % 128) > stor[_144].field_1 % 128:
                    mem[mem[64] + stor[_144].field_1 % 128 + 64] = 0
        else:
            if bool(stor[_144].field_0) == stor[_144].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_144].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_144].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_144].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_144].field_1 % 128)]
                if ceil32(stor[_144].field_1 % 128) > stor[_144].field_1 % 128:
                    mem[mem[64] + stor[_144].field_1 % 128 + 64] = 0
            else:
                if 31 >= stor[_144].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_144].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_144)].field_0)
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_144].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_144) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = stor[_144].field_1 % 128
                mem[mem[64] + 64 len ceil32(stor[_144].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_144].field_1 % 128)]
                if ceil32(stor[_144].field_1 % 128) > stor[_144].field_1 % 128:
                    mem[mem[64] + stor[_144].field_1 % 128 + 64] = 0
        return Array(len=stor[_144].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_144].field_1 % 128)])
    _146 = sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])
    if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0):
        if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1) < 32:
            revert with 'NH{q', 34
        mem[64] = ceil32(ceil32(arg2.length)) + ceil32(uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1)) + 129
        mem[ceil32(ceil32(arg2.length)) + 97] = uint255(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1)
        if bool(stor[_146].field_0):
            if bool(stor[_146].field_0) == uint255(stor[_146].field_1) < 32:
                revert with 'NH{q', 34
            if not uint255(stor[_146].field_1):
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_146].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_146].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_146].field_1))]
                if ceil32(uint255(stor[_146].field_1)) > uint255(stor[_146].field_1):
                    mem[mem[64] + uint255(stor[_146].field_1) + 64] = 0
            else:
                if 31 >= uint255(stor[_146].field_1):
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_146].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_146)].field_0)
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + uint255(stor[_146].field_1) + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_146) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_146].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_146].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_146].field_1))]
                if ceil32(uint255(stor[_146].field_1)) > uint255(stor[_146].field_1):
                    mem[mem[64] + uint255(stor[_146].field_1) + 64] = 0
        else:
            if bool(stor[_146].field_0) == stor[_146].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if not stor[_146].field_1 % 128:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_146].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_146].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_146].field_1))]
                if ceil32(uint255(stor[_146].field_1)) > uint255(stor[_146].field_1):
                    mem[mem[64] + uint255(stor[_146].field_1) + 64] = 0
            else:
                if 31 >= stor[_146].field_1 % 128:
                    mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_146].field_8)
                else:
                    mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_146)].field_0)
                    idx = ceil32(ceil32(arg2.length)) + 129
                    s = 0
                    while ceil32(ceil32(arg2.length)) + stor[_146].field_1 % 128 + 97 > idx:
                        mem[idx + 32] = uint256(stor[s + sha3(_146) + 1].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                mem[mem[64]] = 32
                mem[mem[64] + 32] = uint255(stor[_146].field_1)
                mem[mem[64] + 64 len ceil32(uint255(stor[_146].field_1))] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(uint255(stor[_146].field_1))]
                if ceil32(uint255(stor[_146].field_1)) > uint255(stor[_146].field_1):
                    mem[mem[64] + uint255(stor[_146].field_1) + 64] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor[_146].field_1)), data=mem[mem[64] + 64 len ceil32(uint255(stor[_146].field_1))]), 
    if bool(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_0) == stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128 < 32:
        revert with 'NH{q', 34
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128) + 129
    mem[ceil32(ceil32(arg2.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg2.length)) + 97 len arg2.length + 32])].field_1 % 128
    if bool(stor[_146].field_0):
        if bool(stor[_146].field_0) == uint255(stor[_146].field_1) < 32:
            revert with 'NH{q', 34
        if not uint255(stor[_146].field_1):
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_146].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_146].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_146].field_1 % 128)]
            if ceil32(stor[_146].field_1 % 128) > stor[_146].field_1 % 128:
                mem[mem[64] + stor[_146].field_1 % 128 + 64] = 0
        else:
            if 31 >= uint255(stor[_146].field_1):
                mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_146].field_8)
            else:
                mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_146)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 129
                s = 0
                while ceil32(ceil32(arg2.length)) + uint255(stor[_146].field_1) + 97 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_146) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_146].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_146].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_146].field_1 % 128)]
            if ceil32(stor[_146].field_1 % 128) > stor[_146].field_1 % 128:
                mem[mem[64] + stor[_146].field_1 % 128 + 64] = 0
    else:
        if bool(stor[_146].field_0) == stor[_146].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if not stor[_146].field_1 % 128:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_146].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_146].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_146].field_1 % 128)]
            if ceil32(stor[_146].field_1 % 128) > stor[_146].field_1 % 128:
                mem[mem[64] + stor[_146].field_1 % 128 + 64] = 0
        else:
            if 31 >= stor[_146].field_1 % 128:
                mem[ceil32(ceil32(arg2.length)) + 129] = 256 * Mask(248, 0, stor[_146].field_8)
            else:
                mem[ceil32(ceil32(arg2.length)) + 129] = uint256(stor[sha3(_146)].field_0)
                idx = ceil32(ceil32(arg2.length)) + 129
                s = 0
                while ceil32(ceil32(arg2.length)) + stor[_146].field_1 % 128 + 97 > idx:
                    mem[idx + 32] = uint256(stor[s + sha3(_146) + 1].field_0)
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[mem[64]] = 32
            mem[mem[64] + 32] = stor[_146].field_1 % 128
            mem[mem[64] + 64 len ceil32(stor[_146].field_1 % 128)] = mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(stor[_146].field_1 % 128)]
            if ceil32(stor[_146].field_1 % 128) > stor[_146].field_1 % 128:
                mem[mem[64] + stor[_146].field_1 % 128 + 64] = 0
    return Array(len=stor[_146].field_0 % 128, data=mem[mem[64] + 64 len ceil32(stor[_146].field_1 % 128)])
}



}
