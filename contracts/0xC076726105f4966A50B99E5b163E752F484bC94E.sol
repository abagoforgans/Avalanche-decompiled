contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address stor7;
uint256 counter;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint256 stor11;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function getCounter() payable {
    return counter
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor7.field_0) != tx.origin:
        revert with 0, 'Only admin'
    address(stor7.field_0) = arg1
}

function setWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor7.field_0) != tx.origin:
        revert with 0, 'Only admin'
    stor10[address(arg1)] = 1
}

function sub_81c755de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor7.field_0) != tx.origin:
        revert with 0, 'Only admin'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, bool(arg1))
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender - arg1:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if not arg1 - ownerOf[arg2]:
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

function receiveToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor9[address(msg.sender)]:
        revert with 0, 'Only allowed connectors'
    if not arg1:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[arg2]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(arg1)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    emit Transfer(0, arg1, arg2);
    mem[128] = 'https://buildabuddy.mypinata.clo'
    mem[160] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
    mem[192] = 'GzYU4tQCoyKAQ7xyScHfBs/'
    mem[215] = arg2
    mem[247] = '.json'
    if not ownerOf[arg2]:
        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
    if bool(stor6[arg2].field_0):
        if not bool(stor6[arg2].field_0) - (uint255(stor6[arg2].field_1) < 32):
            revert with 'NH{q', 34
        stor6[arg2].field_0 = 249
        s = 0
        idx = 128
        while 252 > idx:
            stor6[arg2][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 4
        while uint255(stor6[arg2].field_1) + 31 / 32 > idx:
            stor6[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if not bool(stor6[arg2].field_0) - (stor6[arg2].field_1 % 128 < 32):
            revert with 'NH{q', 34
        stor6[arg2].field_0 = 249
        s = 0
        idx = 128
        while 252 > idx:
            stor6[arg2][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 4
        while stor6[arg2].field_1 % 128 + 31 / 32 > idx:
            stor6[arg2][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
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

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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

function sendToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor9[address(msg.sender)]:
        revert with 0, 'Only allowed connectors'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor2[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor2[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor6[arg1].field_0):
        if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
            revert with 'NH{q', 34
        if uint255(stor6[arg1].field_1):
            if bool(stor6[arg1].field_0):
                if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < uint255(stor6[arg1].field_1):
                    idx = 0
                    while uint255(stor6[arg1].field_1) + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1 % 128:
                    idx = 0
                    while stor6[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
            revert with 'NH{q', 34
        if stor6[arg1].field_1 % 128:
            if bool(stor6[arg1].field_0):
                if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < uint255(stor6[arg1].field_1):
                    idx = 0
                    while uint255(stor6[arg1].field_1) + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
                    revert with 'NH{q', 34
                stor6[arg1].field_0 = 0
                if 31 < stor6[arg1].field_1 % 128:
                    idx = 0
                    while stor6[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor6[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function name() payable {
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length.field_1) < 32):
            revert with 'NH{q', 34
        if bool(stor0.length):
            if not bool(stor0.length) - (uint255(stor0.length.field_1) < 32):
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
            if not bool(stor0.length) - (stor0.length.field_1 % 128 < 32):
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
    if not bool(stor0.length) - (stor0.length.field_1 % 128 < 32):
        revert with 'NH{q', 34
    if bool(stor0.length):
        if not bool(stor0.length) - (uint255(stor0.length.field_1) < 32):
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
        if not bool(stor0.length) - (stor0.length.field_1 % 128 < 32):
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

function symbol() payable {
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length.field_1) < 32):
            revert with 'NH{q', 34
        if bool(stor1.length):
            if not bool(stor1.length) - (uint255(stor1.length.field_1) < 32):
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
            if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
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
    if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
        revert with 'NH{q', 34
    if bool(stor1.length):
        if not bool(stor1.length) - (uint255(stor1.length.field_1) < 32):
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
        if not bool(stor1.length) - (stor1.length.field_1 % 128 < 32):
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if bool(stor6[arg1].field_0):
        if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
            revert with 'NH{q', 34
        if bool(stor6[arg1].field_0):
            if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
                revert with 'NH{q', 34
            if uint255(stor6[arg1].field_1):
                if 31 < uint255(stor6[arg1].field_1):
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor6[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        else:
            if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
                revert with 'NH{q', 34
            if stor6[arg1].field_1 % 128:
                if 31 < stor6[arg1].field_1 % 128:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
        mem[ceil32(uint255(stor6[arg1].field_1)) + 224 len ceil32(uint255(stor6[arg1].field_1))] = mem[128 len ceil32(uint255(stor6[arg1].field_1))]
        if ceil32(uint255(stor6[arg1].field_1)) > uint255(stor6[arg1].field_1):
            mem[ceil32(uint255(stor6[arg1].field_1)) + uint255(stor6[arg1].field_1) + 224] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor6[arg1].field_1)), data=mem[128 len ceil32(uint255(stor6[arg1].field_1))], mem[(2 * ceil32(uint255(stor6[arg1].field_1))) + 224 len 2 * ceil32(uint255(stor6[arg1].field_1))]), 
    if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
        revert with 'NH{q', 34
    if bool(stor6[arg1].field_0):
        if not bool(stor6[arg1].field_0) - (uint255(stor6[arg1].field_1) < 32):
            revert with 'NH{q', 34
        if uint255(stor6[arg1].field_1):
            if 31 < uint255(stor6[arg1].field_1):
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor6[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    else:
        if not bool(stor6[arg1].field_0) - (stor6[arg1].field_1 % 128 < 32):
            revert with 'NH{q', 34
        if stor6[arg1].field_1 % 128:
            if 31 < stor6[arg1].field_1 % 128:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor6[arg1].field_8)
    mem[ceil32(stor6[arg1].field_1 % 128) + 224 len ceil32(stor6[arg1].field_1 % 128)] = mem[128 len ceil32(stor6[arg1].field_1 % 128)]
    if ceil32(stor6[arg1].field_1 % 128) > stor6[arg1].field_1 % 128:
        mem[ceil32(stor6[arg1].field_1 % 128) + stor6[arg1].field_1 % 128 + 224] = 0
    return Array(len=stor6[arg1].field_0 % 128, data=mem[128 len ceil32(stor6[arg1].field_1 % 128)], mem[(2 * ceil32(stor6[arg1].field_1 % 128)) + 224 len 2 * ceil32(stor6[arg1].field_1 % 128)]), 
}

function mint(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor7.field_168):
        revert with 0, 'No reentrancy'
    Mask(88, 0, stor7.field_168) = 1
    if not uint8(stor7.field_160):
        if arg1 >= 6:
            revert with 0, 'Over max'
        if counter >= 4800:
            revert with 0, 'Out of tokens'
        mem[0] = msg.sender
        mem[32] = 11
        if stor11[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] + arg1 >= 25:
            revert with 0, 'Over max'
        if 4800 < counter:
            revert with 'NH{q', 17
        if -counter + 4800 <= 5:
            if not uint8(stor7.field_160):
                idx = 0
                while idx < -counter + 4800:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _280 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _297 = mem[_280]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _297:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _297) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _280 + 32
                            while _280 + _297 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _297 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _297:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _297) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _280 + 32
                            while _280 + _297 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _297 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > counter - 4801:
                    revert with 'NH{q', 17
                counter = 4800
            else:
                mem[0] = msg.sender
                mem[32] = 10
                stor10[address(msg.sender)] = 0
                idx = 0
                while idx < 2:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _281 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _300 = mem[_281]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _300:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _300) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _281 + 32
                            while _281 + _300 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _300 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _300:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _300) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _281 + 32
                            while _281 + _300 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _300 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -3:
                    revert with 'NH{q', 17
                counter += 2
        else:
            if not uint8(stor7.field_160):
                idx = 0
                while idx < 5:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _282 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _303 = mem[_282]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _303:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _303) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _282 + 32
                            while _282 + _303 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _303 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _303:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _303) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _282 + 32
                            while _282 + _303 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _303 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -6:
                    revert with 'NH{q', 17
                counter += 5
            else:
                mem[0] = msg.sender
                mem[32] = 10
                stor10[address(msg.sender)] = 0
                idx = 0
                while idx < 2:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _283 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _306 = mem[_283]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _306:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _306) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _283 + 32
                            while _283 + _306 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _306 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _306:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _306) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _283 + 32
                            while _283 + _306 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _306 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -3:
                    revert with 'NH{q', 17
                counter += 2
    else:
        if not stor10[address(msg.sender)]:
            revert with 0, 'Not allowed'
        if arg1 >= 6:
            revert with 0, 'Over max'
        if counter >= 4800:
            revert with 0, 'Out of tokens'
        mem[0] = msg.sender
        mem[32] = 11
        if stor11[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        if stor11[address(msg.sender)] + arg1 >= 25:
            revert with 0, 'Over max'
        if 4800 < counter:
            revert with 'NH{q', 17
        if -counter + 4800 <= 5:
            if not uint8(stor7.field_160):
                idx = 0
                while idx < -counter + 4800:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _284 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _309 = mem[_284]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _309:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _309) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _284 + 32
                            while _284 + _309 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _309 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _309:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _309) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _284 + 32
                            while _284 + _309 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _309 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > counter - 4801:
                    revert with 'NH{q', 17
                counter = 4800
            else:
                mem[0] = msg.sender
                mem[32] = 10
                stor10[address(msg.sender)] = 0
                idx = 0
                while idx < 2:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _285 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _312 = mem[_285]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _312:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _312) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _285 + 32
                            while _285 + _312 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _312 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _312:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _312) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _285 + 32
                            while _285 + _312 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _312 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -3:
                    revert with 'NH{q', 17
                counter += 2
        else:
            if not uint8(stor7.field_160):
                idx = 0
                while idx < 5:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _286 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _315 = mem[_286]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _315:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _315) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _286 + 32
                            while _286 + _315 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _315 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _315:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _315) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _286 + 32
                            while _286 + _315 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _315 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -6:
                    revert with 'NH{q', 17
                counter += 5
            else:
                mem[0] = msg.sender
                mem[32] = 10
                stor10[address(msg.sender)] = 0
                idx = 0
                while idx < 2:
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    if not msg.sender:
                        revert with 0, 'ERC721: mint to the zero address'
                    mem[32] = 2
                    if ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721: token already minted'
                    if balanceOf[address(msg.sender)] > -2:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)]++
                    mem[0] = counter + idx
                    ownerOf[stor8 + idx] = msg.sender
                    emit Transfer(0, msg.sender, counter + idx);
                    if counter > -idx - 1:
                        revert with 'NH{q', 17
                    mem[mem[64] + 32] = 'https://buildabuddy.mypinata.clo'
                    mem[mem[64] + 64] = 'ud/ipfs/QmdcdmN6xRJLDWHce1huLtv8'
                    mem[mem[64] + 96] = 'GzYU4tQCoyKAQ7xyScHfBs/'
                    mem[mem[64] + 119] = counter + idx
                    mem[mem[64] + 151] = '.json'
                    _287 = mem[64]
                    mem[mem[64]] = 124
                    mem[64] = mem[64] + 156
                    if not ownerOf[stor8 + idx]:
                        revert with 0, 'ERC721URIStorage: URI set of nonexistent token'
                    mem[0] = counter + idx
                    mem[32] = 6
                    _318 = mem[_287]
                    if bool(stor6[stor8 + idx].field_0):
                        if not bool(stor6[stor8 + idx].field_0) - (uint255(stor6[stor8 + idx].field_1) < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _318:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _318) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _287 + 32
                            while _287 + _318 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _318 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (uint255(stor6[stor8 + idx].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if not bool(stor6[stor8 + idx].field_0) - (stor6[stor8 + idx].field_1 % 128 < 32):
                            revert with 'NH{q', 34
                        mem[0] = sha3(counter + idx, 6)
                        if not _318:
                            stor6[stor8 + idx].field_0 = 0
                            s = sha3(sha3(counter + idx, 6))
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor6[stor8 + idx].field_0 = (2 * _318) + 1
                            t = sha3(sha3(counter + idx, 6))
                            s = _287 + 32
                            while _287 + _318 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(counter + idx, 6)) + (Mask(251, 0, _318 + 31) >> 5)
                            while sha3(sha3(counter + idx, 6)) + (stor6[stor8 + idx].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if counter > -3:
                    revert with 'NH{q', 17
                counter += 2
    Mask(88, 0, stor7.field_168) = 0
}



}
