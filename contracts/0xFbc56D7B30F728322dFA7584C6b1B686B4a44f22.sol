contract main {




// =====================  Runtime code  =====================


#
#  - sub_0465b135(?)
#  - sub_359b5d9a(?)
#  - sub_394b003a(?)
#  - sub_d9bc0496(?)
#
array of uint256 stor1;
address stor3;
mapping of struct stor5;
mapping of struct stor6;
mapping of uint256 sub_20e3b268;
mapping of uint256 sub_cf50f9c3;
uint8 stor9;
mapping of struct stor10;
uint256 stor11;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of address stor15;
mapping of uint8 stor16;
mapping of uint256 sub_e8b23f66;
uint256 cardCost;
uint256 sub_924102af;
mapping of uint256 sub_dffb2d4e;
mapping of uint256 sub_45c1aaa6;
mapping of address stor24;
mapping of uint256 stor25;
mapping of struct stor26;
array of struct stor27;
array of struct stor28;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor32;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_20e3b268(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_20e3b268[arg1]
}

function sub_45c1aaa6(?) {
    require calldata.size - 4 >= 32
    return sub_45c1aaa6[arg1]
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

function sub_924102af(?) {
    return sub_924102af
}

function sub_cf50f9c3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_cf50f9c3[arg1][arg2]
}

function sub_dffb2d4e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_dffb2d4e[arg1]
}

function cardCost() {
    return cardCost
}

function sub_e8b23f66(?) {
    require calldata.size - 4 >= 32
    return sub_e8b23f66[arg1]
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor32[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function sub_f6db43ec(?) {
    require msg.sender == stor3
    require stor9
    stor9 = 0
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not address(stor1.length)
    require msg.sender == stor3
    address(stor1.length) = arg1
}

function withdraw() {
    sub_dffb2d4e[msg.sender] = 0
    call msg.sender with:
       value sub_dffb2d4e[msg.sender] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
    emit Withdraw(msg.sender, sub_dffb2d4e[msg.sender]);
    return sub_dffb2d4e[msg.sender]
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor32[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
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

function sub_4cde581e(?) payable {
    require calldata.size - 4 >= 32
    call address(stor1.length).fileRequestTicket(uint8 arg1, bool arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor25[ext_call.return_data[0]] = arg1
    stor16[ext_call.return_data[0]] = 3
    emit 0xc15c9c19: arg1, ext_call.return_data[0]
}

function oracleUpdateRequest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call address(stor1.length).fileRequestTicket(uint8 arg1, bool arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor24[ext_call.return_data[0]] = arg1
    stor16[ext_call.return_data[0]] = 2
    emit OracleUpdateRequest(address(arg1), ext_call.return_data[0]);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor32[stor29[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_1a41f445(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor5[msg.sender].field_0:
        if stor5[msg.sender].field_0 == uint255(stor5[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor5[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor5[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[msg.sender].field_0 == stor5[msg.sender].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender].field_0 = 0
            idx = 0
            while stor5[msg.sender].field_1 + 31 / 32 > idx:
                stor5[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_44cde307(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if stor6[msg.sender].field_0:
        if stor6[msg.sender].field_0 == uint255(stor6[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor6[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor6[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor6[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[msg.sender].field_0 == stor6[msg.sender].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor6[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6[msg.sender].field_0 = 0
            idx = 0
            while stor6[msg.sender].field_1 + 31 / 32 > idx:
                stor6[msg.sender][idx].field_0 = 0
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
            if not stor32[stor29[arg3]][address(msg.sender)]:
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
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
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
            if not stor32[stor29[arg3]][address(msg.sender)]:
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
            if not stor32[stor29[arg3]][address(msg.sender)]:
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
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, arg4.length, arg4[all], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
}

function sub_254f39b7(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor6[msg.sender].field_0:
        if stor6[msg.sender].field_0 == uint255(stor6[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[msg.sender][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor6[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor6[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor6[msg.sender].field_0 == stor6[msg.sender].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor6[msg.sender][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor6[msg.sender].field_0 = 0
            idx = 0
            while stor6[msg.sender].field_1 + 31 / 32 > idx:
                stor6[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor5[msg.sender].field_0:
        if stor5[msg.sender].field_0 == uint255(stor5[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender].field_0 = 0
            idx = 0
            while (uint255(stor5[msg.sender].field_0) * 0.5) + 31 / 32 > idx:
                stor5[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor5[msg.sender].field_0 == stor5[msg.sender].field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor5[msg.sender][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor5[msg.sender].field_0 = 0
            idx = 0
            while stor5[msg.sender].field_1 + 31 / 32 > idx:
                stor5[msg.sender][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_45d509cc(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not ownerOf[arg1]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        staticcall address(stor1.length).getFee() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > !ext_call.return_data[32]:
            revert with 0, 17
        if ext_call.return_data[0] + ext_call.return_data[32] > !cardCost:
            revert with 0, 17
        require msg.value >= ext_call.return_data[0] + ext_call.return_data[32] + cardCost
        if sub_dffb2d4e[stor29[arg1]] > !cardCost:
            revert with 0, 17
        sub_dffb2d4e[stor29[arg1]] += cardCost
    if msg.value < cardCost:
        revert with 0, 17
    call address(stor1.length).fileRequestTicket(uint8 arg1, bool arg2) with:
       value msg.value - cardCost wei
         gas gas_remaining wei
        args 1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor26[ext_call.return_data[0]].field_0:
        if stor26[ext_call.return_data[0]].field_0 == uint255(stor26[ext_call.return_data[0]].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor26[ext_call.return_data[0]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor26[ext_call.return_data[0]].field_0 = 0
            idx = 0
            while (uint255(stor26[ext_call.return_data[0]].field_0) * 0.5) + 31 / 32 > idx:
                stor26[ext_call.return_data[0]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor26[ext_call.return_data[0]].field_0 == stor26[ext_call.return_data[0]].field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor26[ext_call.return_data[0]][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor26[ext_call.return_data[0]].field_0 = 0
            idx = 0
            while stor26[ext_call.return_data[0]].field_1 + 31 / 32 > idx:
                stor26[ext_call.return_data[0]][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor25[ext_call.return_data[0]] = arg1
    stor16[ext_call.return_data[0]] = 1
    emit 0x7c6aed3c: arg1, Array(len=arg2.length, data=arg2[all]), ext_call.return_data[0]
}

function cards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1].field_768:
            if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_768):
                if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor10[arg1].field_776
                else:
                    mem[128] = stor10[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
                revert with 0, 34
            if stor10[arg1].field_769:
                if 31 >= stor10[arg1].field_769:
                    mem[128] = 256 * stor10[arg1].field_776
                else:
                    mem[128] = stor10[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor10[arg1].field_0, 
               stor10[arg1].field_256,
               stor10[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor10[arg1].field_768), data=mem[128 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]),
               stor10[arg1].field_1024,
               stor10[arg1].field_1280,
               stor10[arg1].field_1536,
               stor10[arg1].field_2048,
               stor10[arg1].field_2304,
               stor10[arg1].field_2560
    if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
        revert with 0, 34
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_768):
            if 31 >= uint255(stor10[arg1].field_768) * 0.5:
                mem[128] = 256 * stor10[arg1].field_776
            else:
                mem[128] = stor10[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
            revert with 0, 34
        if stor10[arg1].field_769:
            if 31 >= stor10[arg1].field_769:
                mem[128] = 256 * stor10[arg1].field_776
            else:
                mem[128] = stor10[arg1][3].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor10[arg1].field_0, 
           stor10[arg1].field_256,
           stor10[arg1].field_512,
           Array(len=stor10[arg1].field_768, data=mem[128 len ceil32(stor10[arg1].field_769)]),
           stor10[arg1].field_1024,
           stor10[arg1].field_1280,
           stor10[arg1].field_1536,
           stor10[arg1].field_2048,
           stor10[arg1].field_2304,
           stor10[arg1].field_2560
}

function name() {
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor27.length):
            if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor27.length):
                if 31 < uint255(stor27.length) * 0.5:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor27.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * stor27.length.field_8
        else:
            if bool(stor27.length) == stor27.length.field_1 < 32:
                revert with 0, 34
            if stor27.length.field_1:
                if 31 < stor27.length.field_1:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while stor27.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * stor27.length.field_8
        mem[ceil32(uint255(stor27.length) * 0.5) + 192 len ceil32(uint255(stor27.length) * 0.5)] = mem[128 len ceil32(uint255(stor27.length) * 0.5)]
        if ceil32(uint255(stor27.length) * 0.5) > uint255(stor27.length) * 0.5:
            mem[ceil32(uint255(stor27.length) * 0.5) + (uint255(stor27.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)], mem[(2 * ceil32(uint255(stor27.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor27.length) * 0.5)]), 
    if bool(stor27.length) == stor27.length.field_1 < 32:
        revert with 0, 34
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor27.length):
            if 31 < uint255(stor27.length) * 0.5:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while (uint255(stor27.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)])
            mem[128] = 256 * stor27.length.field_8
    else:
        if bool(stor27.length) == stor27.length.field_1 < 32:
            revert with 0, 34
        if stor27.length.field_1:
            if 31 < stor27.length.field_1:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while stor27.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)])
            mem[128] = 256 * stor27.length.field_8
    mem[ceil32(stor27.length.field_1) + 192 len ceil32(stor27.length.field_1)] = mem[128 len ceil32(stor27.length.field_1)]
    if ceil32(stor27.length.field_1) > stor27.length.field_1:
        mem[ceil32(stor27.length.field_1) + stor27.length.field_1 + 192] = 0
    return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1)], mem[(2 * ceil32(stor27.length.field_1)) + 192 len 2 * ceil32(stor27.length.field_1)]), 
}

function symbol() {
    if bool(stor28.length):
        if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor28.length):
            if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor28.length):
                if 31 < uint255(stor28.length) * 0.5:
                    mem[128] = uint256(stor28.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor28.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor28[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)])
                mem[128] = 256 * stor28.length.field_8
        else:
            if bool(stor28.length) == stor28.length.field_1 < 32:
                revert with 0, 34
            if stor28.length.field_1:
                if 31 < stor28.length.field_1:
                    mem[128] = uint256(stor28.field_0)
                    idx = 128
                    s = 0
                    while stor28.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor28[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)])
                mem[128] = 256 * stor28.length.field_8
        mem[ceil32(uint255(stor28.length) * 0.5) + 192 len ceil32(uint255(stor28.length) * 0.5)] = mem[128 len ceil32(uint255(stor28.length) * 0.5)]
        if ceil32(uint255(stor28.length) * 0.5) > uint255(stor28.length) * 0.5:
            mem[ceil32(uint255(stor28.length) * 0.5) + (uint255(stor28.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor28.length), data=mem[128 len ceil32(uint255(stor28.length) * 0.5)], mem[(2 * ceil32(uint255(stor28.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor28.length) * 0.5)]), 
    if bool(stor28.length) == stor28.length.field_1 < 32:
        revert with 0, 34
    if bool(stor28.length):
        if bool(stor28.length) == uint255(stor28.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor28.length):
            if 31 < uint255(stor28.length) * 0.5:
                mem[128] = uint256(stor28.field_0)
                idx = 128
                s = 0
                while (uint255(stor28.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor28[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)])
            mem[128] = 256 * stor28.length.field_8
    else:
        if bool(stor28.length) == stor28.length.field_1 < 32:
            revert with 0, 34
        if stor28.length.field_1:
            if 31 < stor28.length.field_1:
                mem[128] = uint256(stor28.field_0)
                idx = 128
                s = 0
                while stor28.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor28[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)])
            mem[128] = 256 * stor28.length.field_8
    mem[ceil32(stor28.length.field_1) + 192 len ceil32(stor28.length.field_1)] = mem[128 len ceil32(stor28.length.field_1)]
    if ceil32(stor28.length.field_1) > stor28.length.field_1:
        mem[ceil32(stor28.length.field_1) + stor28.length.field_1 + 192] = 0
    return Array(len=stor28.length % 128, data=mem[128 len ceil32(stor28.length.field_1)], mem[(2 * ceil32(stor28.length.field_1)) + 192 len 2 * ceil32(stor28.length.field_1)]), 
}

function sig(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor5[arg1].field_0:
            if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5[arg1].field_0):
                if 31 < uint255(stor5[arg1].field_0) * 0.5:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor5[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_0), data=mem[128 len ceil32(uint255(stor5[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor5[arg1].field_8
        else:
            if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
                revert with 0, 34
            if stor5[arg1].field_1:
                if 31 < stor5[arg1].field_1:
                    mem[128] = stor5[arg1].field_0
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor5[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5[arg1].field_0), data=mem[128 len ceil32(uint255(stor5[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor5[arg1].field_8
        mem[ceil32(uint255(stor5[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor5[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor5[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor5[arg1].field_0) * 0.5) > uint255(stor5[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor5[arg1].field_0) * 0.5) + (uint255(stor5[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5[arg1].field_0), data=mem[128 len ceil32(uint255(stor5[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor5[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor5[arg1].field_0) * 0.5)]), 
    if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
        revert with 0, 34
    if stor5[arg1].field_0:
        if stor5[arg1].field_0 == uint255(stor5[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5[arg1].field_0):
            if 31 < uint255(stor5[arg1].field_0) * 0.5:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor5[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    else:
        if stor5[arg1].field_0 == stor5[arg1].field_1 < 32:
            revert with 0, 34
        if stor5[arg1].field_1:
            if 31 < stor5[arg1].field_1:
                mem[128] = stor5[arg1].field_0
                idx = 128
                s = 0
                while stor5[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor5[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)])
            mem[128] = 256 * stor5[arg1].field_8
    mem[ceil32(stor5[arg1].field_1) + 192 len ceil32(stor5[arg1].field_1)] = mem[128 len ceil32(stor5[arg1].field_1)]
    if ceil32(stor5[arg1].field_1) > stor5[arg1].field_1:
        mem[ceil32(stor5[arg1].field_1) + stor5[arg1].field_1 + 192] = 0
    return Array(len=stor5[arg1].field_0, data=mem[128 len ceil32(stor5[arg1].field_1)], mem[(2 * ceil32(stor5[arg1].field_1)) + 192 len 2 * ceil32(stor5[arg1].field_1)]), 
}

function link(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_0):
                if 31 < uint255(stor6[arg1].field_0) * 0.5:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 0, 34
            if stor6[arg1].field_1:
                if 31 < stor6[arg1].field_1:
                    mem[128] = stor6[arg1].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor6[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor6[arg1].field_0) * 0.5) > uint255(stor6[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor6[arg1].field_0) * 0.5) + (uint255(stor6[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_0), data=mem[128 len ceil32(uint255(stor6[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor6[arg1].field_0) * 0.5)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 0, 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == uint255(stor6[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_0):
            if 31 < uint255(stor6[arg1].field_0) * 0.5:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 0, 34
        if stor6[arg1].field_1:
            if 31 < stor6[arg1].field_1:
                mem[128] = stor6[arg1].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)])
            mem[128] = 256 * stor6[arg1].field_8
    mem[ceil32(stor6[arg1].field_1) + 192 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 192] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 192 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor10[arg1].field_768:
            if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor10[arg1].field_768):
                if 31 < uint255(stor10[arg1].field_768) * 0.5:
                    mem[128] = stor10[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor10[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_768), data=mem[128 len ceil32(uint255(stor10[arg1].field_768) * 0.5)])
                mem[128] = 256 * stor10[arg1].field_776
        else:
            if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
                revert with 0, 34
            if stor10[arg1].field_769:
                if 31 < stor10[arg1].field_769:
                    mem[128] = stor10[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_768), data=mem[128 len ceil32(uint255(stor10[arg1].field_768) * 0.5)])
                mem[128] = 256 * stor10[arg1].field_776
        mem[ceil32(uint255(stor10[arg1].field_768) * 0.5) + 192 len ceil32(uint255(stor10[arg1].field_768) * 0.5)] = mem[128 len ceil32(uint255(stor10[arg1].field_768) * 0.5)]
        if ceil32(uint255(stor10[arg1].field_768) * 0.5) > uint255(stor10[arg1].field_768) * 0.5:
            mem[ceil32(uint255(stor10[arg1].field_768) * 0.5) + (uint255(stor10[arg1].field_768) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_768), data=mem[128 len ceil32(uint255(stor10[arg1].field_768) * 0.5)], mem[(2 * ceil32(uint255(stor10[arg1].field_768) * 0.5)) + 192 len 2 * ceil32(uint255(stor10[arg1].field_768) * 0.5)]), 
    if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
        revert with 0, 34
    if stor10[arg1].field_768:
        if stor10[arg1].field_768 == uint255(stor10[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor10[arg1].field_768):
            if 31 < uint255(stor10[arg1].field_768) * 0.5:
                mem[128] = stor10[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor10[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_768, data=mem[128 len ceil32(stor10[arg1].field_769)])
            mem[128] = 256 * stor10[arg1].field_776
    else:
        if stor10[arg1].field_768 == stor10[arg1].field_769 < 32:
            revert with 0, 34
        if stor10[arg1].field_769:
            if 31 < stor10[arg1].field_769:
                mem[128] = stor10[arg1][3].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_768, data=mem[128 len ceil32(stor10[arg1].field_769)])
            mem[128] = 256 * stor10[arg1].field_776
    mem[ceil32(stor10[arg1].field_769) + 192 len ceil32(stor10[arg1].field_769)] = mem[128 len ceil32(stor10[arg1].field_769)]
    if ceil32(stor10[arg1].field_769) > stor10[arg1].field_769:
        mem[ceil32(stor10[arg1].field_769) + stor10[arg1].field_769 + 192] = 0
    return Array(len=stor10[arg1].field_768, data=mem[128 len ceil32(stor10[arg1].field_769)], mem[(2 * ceil32(stor10[arg1].field_769)) + 192 len 2 * ceil32(stor10[arg1].field_769)]), 
}

function oracleIntFallback(uint256 arg1, bool arg2, uint256 arg3, uint256[] arg4, int256[] arg5) {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 97 < 96 or ceil32(32 * arg4.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg4.length
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = arg4 + 36
    s = 128
    while idx < arg4 + (32 * arg4.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg5 <= test266151307()
    require calldata.size > arg5 + 35
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg5.length) + 98 < 97 or ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg4.length) + 97] = arg5.length
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    s = ceil32(32 * arg4.length) + 129
    idx = arg5 + 36
    while idx < arg5 + (32 * arg5.length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98] = 2
    mem[64] = ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 194
    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130 len 64] = call.data[calldata.size len 64]
    require msg.sender == address(stor1.length)
    if not arg2:
        if not stor16[arg1]:
            if not stor16[arg1]:
                idx = 0
                s = 0
                t = 0
                t = 0
                while idx < stor25[arg1]:
                    if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = 0
                    if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = 0
                    mem[0] = idx
                    mem[32] = sha3(arg1, 13)
                    u = 0
                    v = 0
                    while u < arg3:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _907 = mem[(32 * idx) + 128]
                        if not idx:
                            if u >= mem[ceil32(32 * arg4.length) + 97]:
                                revert with 0, 50
                            if bool(mem[(32 * u) + ceil32(32 * arg4.length) + 129]) != 1:
                                if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] + mem[(32 * idx) + 128]
                            else:
                                if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] + mem[(32 * idx) + 128]
                        else:
                            if idx > 255:
                                revert with 0, 17
                            if u >= mem[ceil32(32 * arg4.length) + 97]:
                                revert with 0, 50
                            if not 1 << idx:
                                revert with 0, 18
                            if bool(mem[(32 * u) + ceil32(32 * arg4.length) + 129] / 1 << idx) != 1:
                                if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] + mem[(32 * idx) + 128]
                            else:
                                if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] + mem[(32 * idx) + 128]
                        if u > -2:
                            revert with 0, 17
                        u = u + 1
                        v = _907
                        continue 
                    if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] <= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130]:
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = stor11
                        mem[mem[64] + 64] = t
                        emit 0xa3741e8e: 0, stor11, t, stor15[arg1], stor13[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        t = stor13[arg1][idx]
                        t = t
                        continue 
                    require stor15[arg1]
                    require not ownerOf[stor11]
                    if balanceOf[stor15[arg1]] > -2:
                        revert with 0, 17
                    balanceOf[stor15[arg1]]++
                    ownerOf[stor11] = stor15[arg1]
                    emit Mint(stor15[arg1], stor11);
                    stor10[stor11].field_1536 = stor15[arg1]
                    sub_cf50f9c3[stor15[arg1]][stor7[stor15[arg1]]] = stor11
                    if sub_20e3b268[stor15[arg1]] > -2:
                        revert with 0, 17
                    sub_20e3b268[stor15[arg1]]++
                    stor10[stor11].field_0 = stor11
                    stor10[stor11].field_512 = stor14[arg1][idx]
                    stor10[stor11].field_1280 = stor13[arg1][idx]
                    if 1 > !stor10[stor13[arg1][idx]].field_1024:
                        revert with 0, 17
                    mem[32] = 10
                    stor10[stor11].field_1024 = stor10[stor13[arg1][idx]].field_1024 + 1
                    stor10[stor11].field_256 = block.timestamp
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = stor11
                    mem[mem[64] + 64] = stor14[arg1][idx]
                    emit 0xa3741e8e: 1, stor11, stor14[arg1][idx], stor15[arg1], stor13[arg1][idx]
                    mem[0] = stor10[stor13[arg1][idx]].field_2048
                    mem[32] = sha3(stor13[arg1][idx], 10) + 7
                    stor10[stor13[arg1][idx]][7][stor10[stor13[arg1][idx]].field_2048].field_0 = stor11
                    if stor11 > -2:
                        revert with 0, 17
                    stor11++
                    if stor10[stor13[arg1][idx]].field_2048 > -2:
                        revert with 0, 17
                    stor10[stor13[arg1][idx]].field_2048++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = sha3(stor13[arg1][idx], 10)
                    t = stor13[arg1][idx]
                    t = stor14[arg1][idx]
                    continue 
            else:
                if stor16[arg1] != 1:
                    if 2 == stor16[arg1]:
                        if call.data[calldata.size + 32] <= call.data[calldata.size]:
                            emit newOracleRejected(stor24[arg1], arg1);
                        else:
                            address(stor1.length) = stor24[arg1]
                            emit newOracleAccepted(stor24[arg1], arg1);
                    else:
                        if 3 == stor16[arg1]:
                            if call.data[calldata.size + 32] <= call.data[calldata.size]:
                                emit 0x83c81b0f: stor25[arg1], arg1
                            else:
                                cardCost = stor25[arg1]
                                emit 0x3b1ae10b: stor25[arg1], arg1
                else:
                    if call.data[calldata.size + 32] <= call.data[calldata.size]:
                        emit 0x1ec2102d: arg1, stor25[arg1]
                    else:
                        if not stor26[arg1].field_0:
                            if stor26[arg1].field_0 == stor26[arg1].field_1 < 32:
                                revert with 0, 34
                            if stor10[stor25[arg1]].field_768:
                                if stor10[stor25[arg1]].field_768 == uint255(stor10[stor25[arg1]].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor26[arg1].field_1:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor10[stor25[arg1]].field_768 = (2 * stor26[arg1].field_1) + 1
                                    s = 0
                                    idx = 0
                                    while stor26[arg1].field_1 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor26[arg1].field_1 + 31 / 32
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[stor25[arg1]].field_768 == stor10[stor25[arg1]].field_769 < 32:
                                    revert with 0, 34
                                if not stor26[arg1].field_1:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor10[stor25[arg1]].field_768 = (2 * stor26[arg1].field_1) + 1
                                    s = 0
                                    idx = 0
                                    while stor26[arg1].field_1 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor26[arg1].field_1 + 31 / 32
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor26[arg1].field_0 == uint255(stor26[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if stor10[stor25[arg1]].field_768:
                                if stor10[stor25[arg1]].field_768 == uint255(stor10[stor25[arg1]].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor26[arg1].field_0) * 0.5:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor26[arg1].field_0) * 0.5:
                                        stor10[stor25[arg1]].field_768 = stor26[arg1].field_0
                                        idx = 0
                                        while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                            stor10[stor25[arg1]][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor10[stor25[arg1]].field_768 = Mask(254, 1, stor26[arg1].field_0) + 1
                                        if not Mask(256, -1, stor26[arg1].field_0):
                                            idx = 0
                                            while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 0
                                            while (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                                s = s + 1
                                                idx = idx + 1
                                                continue 
                                            idx = (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32
                                            while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if stor10[stor25[arg1]].field_768 == stor10[stor25[arg1]].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor26[arg1].field_0) * 0.5:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor26[arg1].field_0) * 0.5:
                                        stor10[stor25[arg1]].field_768 = stor26[arg1].field_0
                                        idx = 0
                                        while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                            stor10[stor25[arg1]][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor10[stor25[arg1]].field_768 = Mask(254, 1, stor26[arg1].field_0) + 1
                                        if not Mask(256, -1, stor26[arg1].field_0):
                                            idx = 0
                                            while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 0
                                            while (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                                s = s + 1
                                                idx = idx + 1
                                                continue 
                                            idx = (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32
                                            while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                        emit 0xbd6d43de: arg1, stor25[arg1]
        else:
            idx = 0
            s = 0
            while idx < arg3:
                if idx >= arg4.length:
                    revert with 0, 50
                _710 = mem[(32 * idx) + 128]
                if idx >= arg5.length:
                    revert with 0, 50
                if mem[(32 * idx) + ceil32(32 * arg4.length) + 129] <= 0:
                    if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] + mem[(32 * idx) + 128]
                else:
                    if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] + mem[(32 * idx) + 128]
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                s = _710
                continue 
            if not stor16[arg1]:
                idx = 0
                t = 0
                u = 0
                u = 0
                while idx < stor25[arg1]:
                    if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = 0
                    if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = 0
                    mem[0] = idx
                    mem[32] = sha3(arg1, 13)
                    v = 0
                    w = s
                    while v < arg3:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _1030 = mem[(32 * idx) + 128]
                        if not idx:
                            if v >= mem[ceil32(32 * arg4.length) + 97]:
                                revert with 0, 50
                            if bool(mem[(32 * v) + ceil32(32 * arg4.length) + 129]) != 1:
                                if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] + mem[(32 * idx) + 128]
                            else:
                                if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] + mem[(32 * idx) + 128]
                        else:
                            if idx > 255:
                                revert with 0, 17
                            if v >= mem[ceil32(32 * arg4.length) + 97]:
                                revert with 0, 50
                            if not 1 << idx:
                                revert with 0, 18
                            if bool(mem[(32 * v) + ceil32(32 * arg4.length) + 129] / 1 << idx) != 1:
                                if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130] + mem[(32 * idx) + 128]
                            else:
                                if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                                    revert with 0, 50
                                if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] = mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] + mem[(32 * idx) + 128]
                        if v > -2:
                            revert with 0, 17
                        v = v + 1
                        w = _1030
                        continue 
                    if 0 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    if 1 >= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 98]:
                        revert with 0, 50
                    if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] <= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130]:
                        mem[mem[64]] = 0
                        mem[mem[64] + 32] = stor11
                        mem[mem[64] + 64] = u
                        emit 0xa3741e8e: 0, stor11, u, stor15[arg1], stor13[arg1][idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        u = stor13[arg1][idx]
                        u = u
                        continue 
                    require stor15[arg1]
                    require not ownerOf[stor11]
                    if balanceOf[stor15[arg1]] > -2:
                        revert with 0, 17
                    balanceOf[stor15[arg1]]++
                    ownerOf[stor11] = stor15[arg1]
                    emit Mint(stor15[arg1], stor11);
                    stor10[stor11].field_1536 = stor15[arg1]
                    sub_cf50f9c3[stor15[arg1]][stor7[stor15[arg1]]] = stor11
                    if sub_20e3b268[stor15[arg1]] > -2:
                        revert with 0, 17
                    sub_20e3b268[stor15[arg1]]++
                    stor10[stor11].field_0 = stor11
                    stor10[stor11].field_512 = stor14[arg1][idx]
                    stor10[stor11].field_1280 = stor13[arg1][idx]
                    if 1 > !stor10[stor13[arg1][idx]].field_1024:
                        revert with 0, 17
                    mem[32] = 10
                    stor10[stor11].field_1024 = stor10[stor13[arg1][idx]].field_1024 + 1
                    stor10[stor11].field_256 = block.timestamp
                    mem[mem[64]] = 1
                    mem[mem[64] + 32] = stor11
                    mem[mem[64] + 64] = stor14[arg1][idx]
                    emit 0xa3741e8e: 1, stor11, stor14[arg1][idx], stor15[arg1], stor13[arg1][idx]
                    mem[0] = stor10[stor13[arg1][idx]].field_2048
                    mem[32] = sha3(stor13[arg1][idx], 10) + 7
                    stor10[stor13[arg1][idx]][7][stor10[stor13[arg1][idx]].field_2048].field_0 = stor11
                    if stor11 > -2:
                        revert with 0, 17
                    stor11++
                    if stor10[stor13[arg1][idx]].field_2048 > -2:
                        revert with 0, 17
                    stor10[stor13[arg1][idx]].field_2048++
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = sha3(stor13[arg1][idx], 10)
                    u = stor13[arg1][idx]
                    u = stor14[arg1][idx]
                    continue 
            else:
                if stor16[arg1] != 1:
                    if 2 == stor16[arg1]:
                        if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] <= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130]:
                            emit newOracleRejected(stor24[arg1], arg1);
                        else:
                            address(stor1.length) = stor24[arg1]
                            emit newOracleAccepted(stor24[arg1], arg1);
                    else:
                        if 3 == stor16[arg1]:
                            if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] <= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130]:
                                emit 0x83c81b0f: stor25[arg1], arg1
                            else:
                                cardCost = stor25[arg1]
                                emit 0x3b1ae10b: stor25[arg1], arg1
                else:
                    if mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 162] <= mem[ceil32(32 * arg4.length) + ceil32(32 * arg5.length) + 130]:
                        emit 0x1ec2102d: arg1, stor25[arg1]
                    else:
                        if not stor26[arg1].field_0:
                            if stor26[arg1].field_0 == stor26[arg1].field_1 < 32:
                                revert with 0, 34
                            if stor10[stor25[arg1]].field_768:
                                if stor10[stor25[arg1]].field_768 == uint255(stor10[stor25[arg1]].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not stor26[arg1].field_1:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor10[stor25[arg1]].field_768 = (2 * stor26[arg1].field_1) + 1
                                    s = 0
                                    idx = 0
                                    while stor26[arg1].field_1 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor26[arg1].field_1 + 31 / 32
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                            else:
                                if stor10[stor25[arg1]].field_768 == stor10[stor25[arg1]].field_769 < 32:
                                    revert with 0, 34
                                if not stor26[arg1].field_1:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    stor10[stor25[arg1]].field_768 = (2 * stor26[arg1].field_1) + 1
                                    s = 0
                                    idx = 0
                                    while stor26[arg1].field_1 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                        s = s + 1
                                        idx = idx + 1
                                        continue 
                                    idx = stor26[arg1].field_1 + 31 / 32
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor26[arg1].field_0 == uint255(stor26[arg1].field_0) * 0.5 < 32:
                                revert with 0, 34
                            if stor10[stor25[arg1]].field_768:
                                if stor10[stor25[arg1]].field_768 == uint255(stor10[stor25[arg1]].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor26[arg1].field_0) * 0.5:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor26[arg1].field_0) * 0.5:
                                        stor10[stor25[arg1]].field_768 = stor26[arg1].field_0
                                        idx = 0
                                        while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                            stor10[stor25[arg1]][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor10[stor25[arg1]].field_768 = Mask(254, 1, stor26[arg1].field_0) + 1
                                        if not Mask(256, -1, stor26[arg1].field_0):
                                            idx = 0
                                            while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 0
                                            while (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                                s = s + 1
                                                idx = idx + 1
                                                continue 
                                            idx = (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32
                                            while (uint255(stor10[stor25[arg1]].field_768) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                if stor10[stor25[arg1]].field_768 == stor10[stor25[arg1]].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor26[arg1].field_0) * 0.5:
                                    stor10[stor25[arg1]].field_768 = 0
                                    idx = 0
                                    while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                        stor10[stor25[arg1]][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 >= uint255(stor26[arg1].field_0) * 0.5:
                                        stor10[stor25[arg1]].field_768 = stor26[arg1].field_0
                                        idx = 0
                                        while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                            stor10[stor25[arg1]][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        stor10[stor25[arg1]].field_768 = Mask(254, 1, stor26[arg1].field_0) + 1
                                        if not Mask(256, -1, stor26[arg1].field_0):
                                            idx = 0
                                            while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = 0
                                            while (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32 > idx:
                                                stor10[stor25[arg1]][s + 3].field_0 = stor26[arg1][idx].field_0
                                                s = s + 1
                                                idx = idx + 1
                                                continue 
                                            idx = (uint255(stor26[arg1].field_0) * 0.5) + 31 / 32
                                            while stor10[stor25[arg1]].field_769 + 31 / 32 > idx:
                                                stor10[stor25[arg1]][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                        emit 0xbd6d43de: arg1, stor25[arg1]
}

function sub_fd3aedbc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_20e3b268[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_20e3b268[address(arg1)]
    if not sub_20e3b268[address(arg1)]:
        if sub_20e3b268[address(arg1)] > test266151307():
            revert with 0, 65
        mem[(32 * sub_20e3b268[address(arg1)]) + 128] = sub_20e3b268[address(arg1)]
        if not sub_20e3b268[address(arg1)]:
            if sub_20e3b268[address(arg1)] > test266151307():
                revert with 0, 65
            mem[(64 * sub_20e3b268[address(arg1)]) + 160] = sub_20e3b268[address(arg1)]
            if not sub_20e3b268[address(arg1)]:
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3490 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3490] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3490 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3490 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3490 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3490 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3490 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3490 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3490 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3490 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3490
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3553 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3553] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3553 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3553 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3553 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3553 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3553 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3553 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3553 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3553 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3553
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2881 = mem[64]
                            mem[mem[64]] = 192
                            _2977 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5793 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5793] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5793]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5793) + 256
                            _7553 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + 288 len 32 * _7553] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7553]
                            mem[_2881 + 96] = (32 * _2977) + (32 * _5793) + (32 * _7553) + 288
                            _8385 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + 320 len 32 * _8385] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8385]
                            mem[_2881 + 128] = (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + 320
                            _9089 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + 352 len 32 * _9089] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9089]
                            mem[_2881 + 160] = (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + (32 * _9089) + 352
                            _9665 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + (32 * _9089) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + (32 * _9089) + (32 * _9665) + 384
                            u = _2881 + (32 * _2977) + (32 * _5793) + (32 * _7553) + (32 * _8385) + (32 * _9089) + 384
                            while idx < _9665:
                                mem[u] = t + -_2881 + -(32 * _2977) + -(32 * _5793) + -(32 * _7553) + -(32 * _8385) + -(32 * _9089) - 384
                                _10049 = mem[s]
                                _10113 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10113:
                                    mem[v + t + 32] = mem[_10049 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10113) > _10113:
                                    mem[t + _10113 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10113) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6114 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6114] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6114 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6114 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6114 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6114 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6114 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6114 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6114 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6114 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6114
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6178 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6178] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6178 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6178 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6178 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6178 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6178 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6178 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6178 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6178 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6178
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5605 = mem[64]
                            mem[mem[64]] = 192
                            _5857 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7554 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7554] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7554]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7554) + 256
                            _8386 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + 288 len 32 * _8386] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8386]
                            mem[_5605 + 96] = (32 * _5857) + (32 * _7554) + (32 * _8386) + 288
                            _9090 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + 320 len 32 * _9090] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9090]
                            mem[_5605 + 128] = (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + 320
                            _9666 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + 352 len 32 * _9666] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9666]
                            mem[_5605 + 160] = (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + (32 * _9666) + 352
                            _10146 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + (32 * _9666) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + (32 * _9666) + (32 * _10146) + 384
                            u = _5605 + (32 * _5857) + (32 * _7554) + (32 * _8386) + (32 * _9090) + (32 * _9666) + 384
                            while idx < _10146:
                                mem[u] = t + -_5605 + -(32 * _5857) + -(32 * _7554) + -(32 * _8386) + -(32 * _9090) + -(32 * _9666) - 384
                                _10370 = mem[s]
                                _10433 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10433:
                                    mem[v + t + 32] = mem[_10370 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10433) > _10433:
                                    mem[t + _10433 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10433) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3492 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3492] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3492 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3492 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3492 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3492 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3492 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3492 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3492 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3492 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3492
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3555 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3555] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3555 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3555 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3555 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3555 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3555 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3555 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3555 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3555 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3555
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2883 = mem[64]
                            mem[mem[64]] = 192
                            _2983 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5795 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5795] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5795]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5795) + 256
                            _7555 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2883 + (32 * mem[96]) + (32 * _5795) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2883 + (32 * mem[96]) + (32 * _5795) + 288 len 32 * _7555] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7555]
                            mem[_2883 + 96] = (32 * mem[96]) + (32 * _5795) + (32 * _7555) + 288
                            _8387 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + 320 len 32 * _8387] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8387]
                            mem[_2883 + 128] = (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + 320
                            _9091 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + 352 len 32 * _9091] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9091]
                            mem[_2883 + 160] = (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + (32 * _9091) + 352
                            _9667 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + (32 * _9091) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + (32 * _9091) + (32 * _9667) + 384
                            u = _2883 + (32 * _2983) + (32 * _5795) + (32 * _7555) + (32 * _8387) + (32 * _9091) + 384
                            while idx < _9667:
                                mem[u] = t + -_2883 + -(32 * _2983) + -(32 * _5795) + -(32 * _7555) + -(32 * _8387) + -(32 * _9091) - 384
                                _10051 = mem[s]
                                _10114 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10114:
                                    mem[v + t + 32] = mem[_10051 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10114) > _10114:
                                    mem[t + _10114 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10114) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6116 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6116] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6116 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6116 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6116 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6116 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6116 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6116 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6116 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6116 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6116
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6180 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6180] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6180 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6180 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6180 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6180 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6180 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6180 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6180 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6180 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6180
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5611 = mem[64]
                            mem[mem[64]] = 192
                            _5859 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7556 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7556] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7556]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7556) + 256
                            _8388 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + 288 len 32 * _8388] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8388]
                            mem[_5611 + 96] = (32 * _5859) + (32 * _7556) + (32 * _8388) + 288
                            _9092 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + 320 len 32 * _9092] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9092]
                            mem[_5611 + 128] = (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + 320
                            _9668 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + 352 len 32 * _9668] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9668]
                            mem[_5611 + 160] = (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + (32 * _9668) + 352
                            _10148 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + (32 * _9668) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + (32 * _9668) + (32 * _10148) + 384
                            u = _5611 + (32 * _5859) + (32 * _7556) + (32 * _8388) + (32 * _9092) + (32 * _9668) + 384
                            while idx < _10148:
                                mem[u] = t + -_5611 + -(32 * _5859) + -(32 * _7556) + -(32 * _8388) + -(32 * _9092) + -(32 * _9668) - 384
                                _10372 = mem[s]
                                _10434 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10434:
                                    mem[v + t + 32] = mem[_10372 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10434) > _10434:
                                    mem[t + _10434 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10434) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3494 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3494] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3494 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3494 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3494 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3494 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3494 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3494 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3494 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3494 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3494
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3557 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3557] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3557 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3557 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3557 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3557 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3557 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3557 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3557 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3557 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3557
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2885 = mem[64]
                            mem[mem[64]] = 192
                            _2989 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5797 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5797] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5797]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5797) + 256
                            _7557 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + 288 len 32 * _7557] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7557]
                            mem[_2885 + 96] = (32 * _2989) + (32 * _5797) + (32 * _7557) + 288
                            _8389 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + 320 len 32 * _8389] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8389]
                            mem[_2885 + 128] = (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + 320
                            _9093 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + 352 len 32 * _9093] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9093]
                            mem[_2885 + 160] = (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + (32 * _9093) + 352
                            _9669 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + (32 * _9093) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + (32 * _9093) + (32 * _9669) + 384
                            u = _2885 + (32 * _2989) + (32 * _5797) + (32 * _7557) + (32 * _8389) + (32 * _9093) + 384
                            while idx < _9669:
                                mem[u] = t + -_2885 + -(32 * _2989) + -(32 * _5797) + -(32 * _7557) + -(32 * _8389) + -(32 * _9093) - 384
                                _10053 = mem[s]
                                _10115 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10115:
                                    mem[v + t + 32] = mem[_10053 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10115) > _10115:
                                    mem[t + _10115 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10115) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6118 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6118] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6118 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6118 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6118 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6118 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6118 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6118 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6118 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6118 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6118
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6182 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6182] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6182 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6182 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6182 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6182 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6182 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6182 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6182 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6182 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6182
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5617 = mem[64]
                            mem[mem[64]] = 192
                            _5861 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7558 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7558] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7558]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7558) + 256
                            _8390 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + 288 len 32 * _8390] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8390]
                            mem[_5617 + 96] = (32 * _5861) + (32 * _7558) + (32 * _8390) + 288
                            _9094 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + 320 len 32 * _9094] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9094]
                            mem[_5617 + 128] = (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + 320
                            _9670 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + 352 len 32 * _9670] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9670]
                            mem[_5617 + 160] = (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + (32 * _9670) + 352
                            _10150 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + (32 * _9670) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + (32 * _9670) + (32 * _10150) + 384
                            u = _5617 + (32 * _5861) + (32 * _7558) + (32 * _8390) + (32 * _9094) + (32 * _9670) + 384
                            while idx < _10150:
                                mem[u] = t + -_5617 + -(32 * _5861) + -(32 * _7558) + -(32 * _8390) + -(32 * _9094) + -(32 * _9670) - 384
                                _10374 = mem[s]
                                _10435 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10435:
                                    mem[v + t + 32] = mem[_10374 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10435) > _10435:
                                    mem[t + _10435 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10435) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3496 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3496] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3496 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3496 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3496 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3496 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3496 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3496 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3496 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3496 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3496
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3559 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3559] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3559 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3559 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3559 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3559 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3559 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3559 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3559 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3559 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3559
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2887 = mem[64]
                            mem[mem[64]] = 192
                            _2995 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5799 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5799] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5799]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5799) + 256
                            _7559 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + 288 len 32 * _7559] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7559]
                            mem[_2887 + 96] = (32 * _2995) + (32 * _5799) + (32 * _7559) + 288
                            _8391 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + 320 len 32 * _8391] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8391]
                            mem[_2887 + 128] = (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + 320
                            _9095 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + 352 len 32 * _9095] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9095]
                            mem[_2887 + 160] = (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + (32 * _9095) + 352
                            _9671 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + (32 * _9095) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + (32 * _9095) + (32 * _9671) + 384
                            u = _2887 + (32 * _2995) + (32 * _5799) + (32 * _7559) + (32 * _8391) + (32 * _9095) + 384
                            while idx < _9671:
                                mem[u] = t + -_2887 + -(32 * _2995) + -(32 * _5799) + -(32 * _7559) + -(32 * _8391) + -(32 * _9095) - 384
                                _10055 = mem[s]
                                _10116 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10116:
                                    mem[v + t + 32] = mem[_10055 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10116) > _10116:
                                    mem[t + _10116 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10116) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6120 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6120] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6120 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6120 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6120 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6120 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6120 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6120 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6120 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6120 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6120
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6184 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6184] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6184 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6184 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6184 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6184 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6184 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6184 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6184 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6184 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6184
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5623 = mem[64]
                            mem[mem[64]] = 192
                            _5863 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7560 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7560] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7560]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7560) + 256
                            _8392 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + 288 len 32 * _8392] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8392]
                            mem[_5623 + 96] = (32 * _5863) + (32 * _7560) + (32 * _8392) + 288
                            _9096 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + 320 len 32 * _9096] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9096]
                            mem[_5623 + 128] = (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + 320
                            _9672 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + 352 len 32 * _9672] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9672]
                            mem[_5623 + 160] = (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + (32 * _9672) + 352
                            _10152 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + (32 * _9672) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + (32 * _9672) + (32 * _10152) + 384
                            u = _5623 + (32 * _5863) + (32 * _7560) + (32 * _8392) + (32 * _9096) + (32 * _9672) + 384
                            while idx < _10152:
                                mem[u] = t + -_5623 + -(32 * _5863) + -(32 * _7560) + -(32 * _8392) + -(32 * _9096) + -(32 * _9672) - 384
                                _10376 = mem[s]
                                _10436 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10436:
                                    mem[v + t + 32] = mem[_10376 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10436) > _10436:
                                    mem[t + _10436 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10436) + t + 32
                                u = u + 32
                                continue 
            else:
                mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3498 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3498] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3498 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3498 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3498 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3498 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3498 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3498 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3498 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3498 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3498
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3561 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3561] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3561 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3561 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3561 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3561 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3561 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3561 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3561 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3561 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3561
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2889 = mem[64]
                            mem[mem[64]] = 192
                            _3001 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5801 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5801] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5801]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5801) + 256
                            _7561 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2889 + (32 * mem[96]) + (32 * _5801) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2889 + (32 * mem[96]) + (32 * _5801) + 288 len 32 * _7561] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7561]
                            mem[_2889 + 96] = (32 * mem[96]) + (32 * _5801) + (32 * _7561) + 288
                            _8393 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + 320 len 32 * _8393] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8393]
                            mem[_2889 + 128] = (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + 320
                            _9097 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + 352 len 32 * _9097] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9097]
                            mem[_2889 + 160] = (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + (32 * _9097) + 352
                            _9673 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + (32 * _9097) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + (32 * _9097) + (32 * _9673) + 384
                            u = _2889 + (32 * _3001) + (32 * _5801) + (32 * _7561) + (32 * _8393) + (32 * _9097) + 384
                            while idx < _9673:
                                mem[u] = t + -_2889 + -(32 * _3001) + -(32 * _5801) + -(32 * _7561) + -(32 * _8393) + -(32 * _9097) - 384
                                _10057 = mem[s]
                                _10117 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10117:
                                    mem[v + t + 32] = mem[_10057 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10117) > _10117:
                                    mem[t + _10117 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10117) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6122 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6122] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6122 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6122 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6122 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6122 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6122 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6122 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6122 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6122 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6122
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6186 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6186] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6186 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6186 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6186 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6186 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6186 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6186 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6186 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6186 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6186
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5629 = mem[64]
                            mem[mem[64]] = 192
                            _5865 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7562 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7562] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7562]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7562) + 256
                            _8394 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5629 + (32 * mem[96]) + (32 * _7562) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5629 + (32 * mem[96]) + (32 * _7562) + 288 len 32 * _8394] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8394]
                            mem[_5629 + 96] = (32 * mem[96]) + (32 * _7562) + (32 * _8394) + 288
                            _9098 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + 320 len 32 * _9098] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9098]
                            mem[_5629 + 128] = (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + 320
                            _9674 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + 352 len 32 * _9674] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9674]
                            mem[_5629 + 160] = (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + (32 * _9674) + 352
                            _10154 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + (32 * _9674) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + (32 * _9674) + (32 * _10154) + 384
                            u = _5629 + (32 * _5865) + (32 * _7562) + (32 * _8394) + (32 * _9098) + (32 * _9674) + 384
                            while idx < _10154:
                                mem[u] = t + -_5629 + -(32 * _5865) + -(32 * _7562) + -(32 * _8394) + -(32 * _9098) + -(32 * _9674) - 384
                                _10378 = mem[s]
                                _10437 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10437:
                                    mem[v + t + 32] = mem[_10378 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10437) > _10437:
                                    mem[t + _10437 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10437) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3500 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3500] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3500 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3500 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3500 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3500 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3500 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3500 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3500 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3500 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3500
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3563 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3563] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3563 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3563 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3563 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3563 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3563 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3563 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3563 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3563 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3563
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2891 = mem[64]
                            mem[mem[64]] = 192
                            _3007 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5803 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5803] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5803]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5803) + 256
                            _7563 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + 288 len 32 * _7563] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7563]
                            mem[_2891 + 96] = (32 * _3007) + (32 * _5803) + (32 * _7563) + 288
                            _8395 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + 320 len 32 * _8395] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8395]
                            mem[_2891 + 128] = (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + 320
                            _9099 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + 352 len 32 * _9099] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9099]
                            mem[_2891 + 160] = (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + (32 * _9099) + 352
                            _9675 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + (32 * _9099) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + (32 * _9099) + (32 * _9675) + 384
                            u = _2891 + (32 * _3007) + (32 * _5803) + (32 * _7563) + (32 * _8395) + (32 * _9099) + 384
                            while idx < _9675:
                                mem[u] = t + -_2891 + -(32 * _3007) + -(32 * _5803) + -(32 * _7563) + -(32 * _8395) + -(32 * _9099) - 384
                                _10059 = mem[s]
                                _10118 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10118:
                                    mem[v + t + 32] = mem[_10059 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10118) > _10118:
                                    mem[t + _10118 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10118) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6124 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6124] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6124 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6124 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6124 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6124 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6124 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6124 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6124 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6124 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6124
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6188 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6188] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6188 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6188 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6188 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6188 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6188 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6188 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6188 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6188 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6188
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5635 = mem[64]
                            mem[mem[64]] = 192
                            _5867 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7564 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7564] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7564]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7564) + 256
                            _8396 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + 288 len 32 * _8396] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8396]
                            mem[_5635 + 96] = (32 * _5867) + (32 * _7564) + (32 * _8396) + 288
                            _9100 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + 320 len 32 * _9100] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9100]
                            mem[_5635 + 128] = (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + 320
                            _9676 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + 352 len 32 * _9676] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9676]
                            mem[_5635 + 160] = (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + (32 * _9676) + 352
                            _10156 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + (32 * _9676) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + (32 * _9676) + (32 * _10156) + 384
                            u = _5635 + (32 * _5867) + (32 * _7564) + (32 * _8396) + (32 * _9100) + (32 * _9676) + 384
                            while idx < _10156:
                                mem[u] = t + -_5635 + -(32 * _5867) + -(32 * _7564) + -(32 * _8396) + -(32 * _9100) + -(32 * _9676) - 384
                                _10380 = mem[s]
                                _10438 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10438:
                                    mem[v + t + 32] = mem[_10380 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10438) > _10438:
                                    mem[t + _10438 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10438) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3502 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3502] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3502 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3502 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3502 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3502 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3502 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3502 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3502 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3502 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3502
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3565 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3565] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3565 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3565 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3565 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3565 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3565 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3565 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3565 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3565 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3565
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2893 = mem[64]
                            mem[mem[64]] = 192
                            _3013 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5805 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5805] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5805]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5805) + 256
                            _7565 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2893 + (32 * mem[96]) + (32 * _5805) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2893 + (32 * mem[96]) + (32 * _5805) + 288 len 32 * _7565] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7565]
                            mem[_2893 + 96] = (32 * mem[96]) + (32 * _5805) + (32 * _7565) + 288
                            _8397 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + 320 len 32 * _8397] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8397]
                            mem[_2893 + 128] = (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + 320
                            _9101 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + 352 len 32 * _9101] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9101]
                            mem[_2893 + 160] = (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + (32 * _9101) + 352
                            _9677 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + (32 * _9101) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + (32 * _9101) + (32 * _9677) + 384
                            u = _2893 + (32 * _3013) + (32 * _5805) + (32 * _7565) + (32 * _8397) + (32 * _9101) + 384
                            while idx < _9677:
                                mem[u] = t + -_2893 + -(32 * _3013) + -(32 * _5805) + -(32 * _7565) + -(32 * _8397) + -(32 * _9101) - 384
                                _10061 = mem[s]
                                _10119 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10119:
                                    mem[v + t + 32] = mem[_10061 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10119) > _10119:
                                    mem[t + _10119 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10119) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6126 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6126] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6126 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6126 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6126 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6126 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6126 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6126 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6126 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6126 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6126
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6190 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6190] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6190 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6190 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6190 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6190 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6190 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6190 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6190 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6190 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6190
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5641 = mem[64]
                            mem[mem[64]] = 192
                            _5869 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7566 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7566] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7566]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7566) + 256
                            _8398 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + 288 len 32 * _8398] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8398]
                            mem[_5641 + 96] = (32 * _5869) + (32 * _7566) + (32 * _8398) + 288
                            _9102 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + 320 len 32 * _9102] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9102]
                            mem[_5641 + 128] = (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + 320
                            _9678 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + 352 len 32 * _9678] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9678]
                            mem[_5641 + 160] = (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + (32 * _9678) + 352
                            _10158 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + (32 * _9678) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + (32 * _9678) + (32 * _10158) + 384
                            u = _5641 + (32 * _5869) + (32 * _7566) + (32 * _8398) + (32 * _9102) + (32 * _9678) + 384
                            while idx < _10158:
                                mem[u] = t + -_5641 + -(32 * _5869) + -(32 * _7566) + -(32 * _8398) + -(32 * _9102) + -(32 * _9678) - 384
                                _10382 = mem[s]
                                _10439 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10439:
                                    mem[v + t + 32] = mem[_10382 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10439) > _10439:
                                    mem[t + _10439 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10439) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3504 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3504] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3504 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3504 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3504 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3504 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3504 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3504 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3504 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3504 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3504
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3567 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3567] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3567 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3567 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3567 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3567 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3567 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3567 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3567 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3567 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3567
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2895 = mem[64]
                            mem[mem[64]] = 192
                            _3019 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5807 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5807] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5807]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5807) + 256
                            _7567 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2895 + (32 * mem[96]) + (32 * _5807) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2895 + (32 * mem[96]) + (32 * _5807) + 288 len 32 * _7567] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7567]
                            mem[_2895 + 96] = (32 * mem[96]) + (32 * _5807) + (32 * _7567) + 288
                            _8399 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + 320 len 32 * _8399] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8399]
                            mem[_2895 + 128] = (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + 320
                            _9103 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + 352 len 32 * _9103] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9103]
                            mem[_2895 + 160] = (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + (32 * _9103) + 352
                            _9679 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + (32 * _9103) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + (32 * _9103) + (32 * _9679) + 384
                            u = _2895 + (32 * _3019) + (32 * _5807) + (32 * _7567) + (32 * _8399) + (32 * _9103) + 384
                            while idx < _9679:
                                mem[u] = t + -_2895 + -(32 * _3019) + -(32 * _5807) + -(32 * _7567) + -(32 * _8399) + -(32 * _9103) - 384
                                _10063 = mem[s]
                                _10120 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10120:
                                    mem[v + t + 32] = mem[_10063 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10120) > _10120:
                                    mem[t + _10120 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10120) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6128 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6128] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6128 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6128 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6128 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6128 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6128 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6128 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6128 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6128 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6128
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6192 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6192] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6192 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6192 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6192 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6192 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6192 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6192 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6192 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6192 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6192
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5647 = mem[64]
                            mem[mem[64]] = 192
                            _5871 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7568 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7568] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7568]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7568) + 256
                            _8400 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + 288 len 32 * _8400] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8400]
                            mem[_5647 + 96] = (32 * _5871) + (32 * _7568) + (32 * _8400) + 288
                            _9104 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + 320 len 32 * _9104] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9104]
                            mem[_5647 + 128] = (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + 320
                            _9680 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + 352 len 32 * _9680] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9680]
                            mem[_5647 + 160] = (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + (32 * _9680) + 352
                            _10160 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + (32 * _9680) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + (32 * _9680) + (32 * _10160) + 384
                            u = _5647 + (32 * _5871) + (32 * _7568) + (32 * _8400) + (32 * _9104) + (32 * _9680) + 384
                            while idx < _10160:
                                mem[u] = t + -_5647 + -(32 * _5871) + -(32 * _7568) + -(32 * _8400) + -(32 * _9104) + -(32 * _9680) - 384
                                _10384 = mem[s]
                                _10440 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10440:
                                    mem[v + t + 32] = mem[_10384 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10440) > _10440:
                                    mem[t + _10440 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10440) + t + 32
                                u = u + 32
                                continue 
        else:
            mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
            if sub_20e3b268[address(arg1)] > test266151307():
                revert with 0, 65
            mem[(64 * sub_20e3b268[address(arg1)]) + 160] = sub_20e3b268[address(arg1)]
            if not sub_20e3b268[address(arg1)]:
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3506 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3506] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3506 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3506 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3506 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3506 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3506 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3506 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3506 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3506 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3506
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3569 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3569] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3569 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3569 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3569 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3569 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3569 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3569 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3569 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3569 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3569
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2897 = mem[64]
                            mem[mem[64]] = 192
                            _3025 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5809 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5809] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5809]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5809) + 256
                            _7569 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + 288 len 32 * _7569] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7569]
                            mem[_2897 + 96] = (32 * _3025) + (32 * _5809) + (32 * _7569) + 288
                            _8401 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + 320 len 32 * _8401] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8401]
                            mem[_2897 + 128] = (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + 320
                            _9105 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + 352 len 32 * _9105] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9105]
                            mem[_2897 + 160] = (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + (32 * _9105) + 352
                            _9681 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + (32 * _9105) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + (32 * _9105) + (32 * _9681) + 384
                            u = _2897 + (32 * _3025) + (32 * _5809) + (32 * _7569) + (32 * _8401) + (32 * _9105) + 384
                            while idx < _9681:
                                mem[u] = t + -_2897 + -(32 * _3025) + -(32 * _5809) + -(32 * _7569) + -(32 * _8401) + -(32 * _9105) - 384
                                _10065 = mem[s]
                                _10121 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10121:
                                    mem[v + t + 32] = mem[_10065 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10121) > _10121:
                                    mem[t + _10121 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10121) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6130 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6130] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6130 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6130 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6130 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6130 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6130 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6130 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6130 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6130 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6130
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6194 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6194] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6194 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6194 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6194 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6194 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6194 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6194 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6194 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6194 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6194
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5653 = mem[64]
                            mem[mem[64]] = 192
                            _5873 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7570 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7570] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7570]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7570) + 256
                            _8402 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5653 + (32 * mem[96]) + (32 * _7570) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5653 + (32 * mem[96]) + (32 * _7570) + 288 len 32 * _8402] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8402]
                            mem[_5653 + 96] = (32 * mem[96]) + (32 * _7570) + (32 * _8402) + 288
                            _9106 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + 320 len 32 * _9106] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9106]
                            mem[_5653 + 128] = (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + 320
                            _9682 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + 352 len 32 * _9682] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9682]
                            mem[_5653 + 160] = (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + (32 * _9682) + 352
                            _10162 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + (32 * _9682) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + (32 * _9682) + (32 * _10162) + 384
                            u = _5653 + (32 * _5873) + (32 * _7570) + (32 * _8402) + (32 * _9106) + (32 * _9682) + 384
                            while idx < _10162:
                                mem[u] = t + -_5653 + -(32 * _5873) + -(32 * _7570) + -(32 * _8402) + -(32 * _9106) + -(32 * _9682) - 384
                                _10386 = mem[s]
                                _10441 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10441:
                                    mem[v + t + 32] = mem[_10386 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10441) > _10441:
                                    mem[t + _10441 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10441) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3508 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3508] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3508 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3508 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3508 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3508 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3508 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3508 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3508 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3508 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3508
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3571 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3571] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3571 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3571 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3571 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3571 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3571 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3571 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3571 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3571 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3571
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2899 = mem[64]
                            mem[mem[64]] = 192
                            _3031 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5811 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5811] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5811]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5811) + 256
                            _7571 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + 288 len 32 * _7571] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7571]
                            mem[_2899 + 96] = (32 * _3031) + (32 * _5811) + (32 * _7571) + 288
                            _8403 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + 320 len 32 * _8403] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8403]
                            mem[_2899 + 128] = (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + 320
                            _9107 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + 352 len 32 * _9107] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9107]
                            mem[_2899 + 160] = (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + (32 * _9107) + 352
                            _9683 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + (32 * _9107) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + (32 * _9107) + (32 * _9683) + 384
                            u = _2899 + (32 * _3031) + (32 * _5811) + (32 * _7571) + (32 * _8403) + (32 * _9107) + 384
                            while idx < _9683:
                                mem[u] = t + -_2899 + -(32 * _3031) + -(32 * _5811) + -(32 * _7571) + -(32 * _8403) + -(32 * _9107) - 384
                                _10067 = mem[s]
                                _10122 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10122:
                                    mem[v + t + 32] = mem[_10067 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10122) > _10122:
                                    mem[t + _10122 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10122) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6132 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6132] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6132 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6132 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6132 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6132 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6132 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6132 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6132 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6132 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6132
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6196 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6196] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6196 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6196 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6196 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6196 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6196 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6196 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6196 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6196 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6196
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5659 = mem[64]
                            mem[mem[64]] = 192
                            _5875 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7572 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7572] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7572]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7572) + 256
                            _8404 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5659 + (32 * mem[96]) + (32 * _7572) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5659 + (32 * mem[96]) + (32 * _7572) + 288 len 32 * _8404] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8404]
                            mem[_5659 + 96] = (32 * mem[96]) + (32 * _7572) + (32 * _8404) + 288
                            _9108 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + 320 len 32 * _9108] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9108]
                            mem[_5659 + 128] = (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + 320
                            _9684 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + 352 len 32 * _9684] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9684]
                            mem[_5659 + 160] = (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + (32 * _9684) + 352
                            _10164 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + (32 * _9684) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + (32 * _9684) + (32 * _10164) + 384
                            u = _5659 + (32 * _5875) + (32 * _7572) + (32 * _8404) + (32 * _9108) + (32 * _9684) + 384
                            while idx < _10164:
                                mem[u] = t + -_5659 + -(32 * _5875) + -(32 * _7572) + -(32 * _8404) + -(32 * _9108) + -(32 * _9684) - 384
                                _10388 = mem[s]
                                _10442 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10442:
                                    mem[v + t + 32] = mem[_10388 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10442) > _10442:
                                    mem[t + _10442 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10442) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3510 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3510] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3510 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3510 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3510 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3510 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3510 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3510 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3510 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3510 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3510
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3573 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3573] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3573 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3573 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3573 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3573 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3573 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3573 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3573 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3573 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3573
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2901 = mem[64]
                            mem[mem[64]] = 192
                            _3037 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5813 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5813] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5813]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5813) + 256
                            _7573 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + 288 len 32 * _7573] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7573]
                            mem[_2901 + 96] = (32 * _3037) + (32 * _5813) + (32 * _7573) + 288
                            _8405 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + 320 len 32 * _8405] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8405]
                            mem[_2901 + 128] = (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + 320
                            _9109 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + 352 len 32 * _9109] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9109]
                            mem[_2901 + 160] = (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + (32 * _9109) + 352
                            _9685 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + (32 * _9109) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + (32 * _9109) + (32 * _9685) + 384
                            u = _2901 + (32 * _3037) + (32 * _5813) + (32 * _7573) + (32 * _8405) + (32 * _9109) + 384
                            while idx < _9685:
                                mem[u] = t + -_2901 + -(32 * _3037) + -(32 * _5813) + -(32 * _7573) + -(32 * _8405) + -(32 * _9109) - 384
                                _10069 = mem[s]
                                _10123 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10123:
                                    mem[v + t + 32] = mem[_10069 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10123) > _10123:
                                    mem[t + _10123 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10123) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6134 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6134] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6134 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6134 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6134 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6134 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6134 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6134 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6134 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6134 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6134
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6198 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6198] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6198 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6198 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6198 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6198 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6198 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6198 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6198 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6198 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6198
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5665 = mem[64]
                            mem[mem[64]] = 192
                            _5877 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7574 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7574] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7574]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7574) + 256
                            _8406 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + 288 len 32 * _8406] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8406]
                            mem[_5665 + 96] = (32 * _5877) + (32 * _7574) + (32 * _8406) + 288
                            _9110 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + 320 len 32 * _9110] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9110]
                            mem[_5665 + 128] = (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + 320
                            _9686 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + 352 len 32 * _9686] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9686]
                            mem[_5665 + 160] = (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + (32 * _9686) + 352
                            _10166 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + (32 * _9686) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + (32 * _9686) + (32 * _10166) + 384
                            u = _5665 + (32 * _5877) + (32 * _7574) + (32 * _8406) + (32 * _9110) + (32 * _9686) + 384
                            while idx < _10166:
                                mem[u] = t + -_5665 + -(32 * _5877) + -(32 * _7574) + -(32 * _8406) + -(32 * _9110) + -(32 * _9686) - 384
                                _10390 = mem[s]
                                _10443 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10443:
                                    mem[v + t + 32] = mem[_10390 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10443) > _10443:
                                    mem[t + _10443 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10443) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3512 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3512] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3512 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3512 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3512 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3512 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3512 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3512 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3512 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3512 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3512
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3575 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3575] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3575 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3575 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3575 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3575 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3575 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3575 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3575 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3575 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3575
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2903 = mem[64]
                            mem[mem[64]] = 192
                            _3043 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5815 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5815] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5815]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5815) + 256
                            _7575 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + 288 len 32 * _7575] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7575]
                            mem[_2903 + 96] = (32 * _3043) + (32 * _5815) + (32 * _7575) + 288
                            _8407 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + 320 len 32 * _8407] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8407]
                            mem[_2903 + 128] = (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + 320
                            _9111 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + 352 len 32 * _9111] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9111]
                            mem[_2903 + 160] = (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + (32 * _9111) + 352
                            _9687 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + (32 * _9111) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + (32 * _9111) + (32 * _9687) + 384
                            u = _2903 + (32 * _3043) + (32 * _5815) + (32 * _7575) + (32 * _8407) + (32 * _9111) + 384
                            while idx < _9687:
                                mem[u] = t + -_2903 + -(32 * _3043) + -(32 * _5815) + -(32 * _7575) + -(32 * _8407) + -(32 * _9111) - 384
                                _10071 = mem[s]
                                _10124 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10124:
                                    mem[v + t + 32] = mem[_10071 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10124) > _10124:
                                    mem[t + _10124 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10124) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6136 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6136] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6136 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6136 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6136 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6136 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6136 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6136 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6136 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6136 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6136
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6200 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6200] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6200 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6200 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6200 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6200 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6200 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6200 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6200 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6200 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6200
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5671 = mem[64]
                            mem[mem[64]] = 192
                            _5879 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7576 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7576] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7576]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7576) + 256
                            _8408 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + 288 len 32 * _8408] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8408]
                            mem[_5671 + 96] = (32 * _5879) + (32 * _7576) + (32 * _8408) + 288
                            _9112 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + 320 len 32 * _9112] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9112]
                            mem[_5671 + 128] = (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + 320
                            _9688 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + 352 len 32 * _9688] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9688]
                            mem[_5671 + 160] = (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + (32 * _9688) + 352
                            _10168 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + (32 * _9688) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + (32 * _9688) + (32 * _10168) + 384
                            u = _5671 + (32 * _5879) + (32 * _7576) + (32 * _8408) + (32 * _9112) + (32 * _9688) + 384
                            while idx < _10168:
                                mem[u] = t + -_5671 + -(32 * _5879) + -(32 * _7576) + -(32 * _8408) + -(32 * _9112) + -(32 * _9688) - 384
                                _10392 = mem[s]
                                _10444 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10444:
                                    mem[v + t + 32] = mem[_10392 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10444) > _10444:
                                    mem[t + _10444 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10444) + t + 32
                                u = u + 32
                                continue 
            else:
                mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3514 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3514] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3514 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3514 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3514 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3514 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3514 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3514 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3514 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3514 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3514
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3577 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3577] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3577 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3577 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3577 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3577 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3577 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3577 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3577 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3577 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3577
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2905 = mem[64]
                            mem[mem[64]] = 192
                            _3049 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5817 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5817] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5817]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5817) + 256
                            _7577 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + 288 len 32 * _7577] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7577]
                            mem[_2905 + 96] = (32 * _3049) + (32 * _5817) + (32 * _7577) + 288
                            _8409 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + 320 len 32 * _8409] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8409]
                            mem[_2905 + 128] = (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + 320
                            _9113 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + 352 len 32 * _9113] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9113]
                            mem[_2905 + 160] = (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + (32 * _9113) + 352
                            _9689 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + (32 * _9113) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + (32 * _9113) + (32 * _9689) + 384
                            u = _2905 + (32 * _3049) + (32 * _5817) + (32 * _7577) + (32 * _8409) + (32 * _9113) + 384
                            while idx < _9689:
                                mem[u] = t + -_2905 + -(32 * _3049) + -(32 * _5817) + -(32 * _7577) + -(32 * _8409) + -(32 * _9113) - 384
                                _10073 = mem[s]
                                _10125 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10125:
                                    mem[v + t + 32] = mem[_10073 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10125) > _10125:
                                    mem[t + _10125 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10125) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6138 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6138] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6138 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6138 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6138 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6138 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6138 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6138 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6138 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6138 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6138
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6202 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6202] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6202 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6202 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6202 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6202 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6202 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6202 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6202 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6202 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6202
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5677 = mem[64]
                            mem[mem[64]] = 192
                            _5881 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7578 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7578] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7578]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7578) + 256
                            _8410 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + 288 len 32 * _8410] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8410]
                            mem[_5677 + 96] = (32 * _5881) + (32 * _7578) + (32 * _8410) + 288
                            _9114 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + 320 len 32 * _9114] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9114]
                            mem[_5677 + 128] = (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + 320
                            _9690 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + 352 len 32 * _9690] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9690]
                            mem[_5677 + 160] = (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + (32 * _9690) + 352
                            _10170 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + (32 * _9690) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + (32 * _9690) + (32 * _10170) + 384
                            u = _5677 + (32 * _5881) + (32 * _7578) + (32 * _8410) + (32 * _9114) + (32 * _9690) + 384
                            while idx < _10170:
                                mem[u] = t + -_5677 + -(32 * _5881) + -(32 * _7578) + -(32 * _8410) + -(32 * _9114) + -(32 * _9690) - 384
                                _10394 = mem[s]
                                _10445 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10445:
                                    mem[v + t + 32] = mem[_10394 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10445) > _10445:
                                    mem[t + _10445 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10445) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3516 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3516] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3516 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3516 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3516 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3516 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3516 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3516 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3516 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3516 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3516
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3579 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3579] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3579 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3579 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3579 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3579 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3579 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3579 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3579 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3579 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3579
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2907 = mem[64]
                            mem[mem[64]] = 192
                            _3055 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5819 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5819] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5819]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5819) + 256
                            _7579 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + 288 len 32 * _7579] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7579]
                            mem[_2907 + 96] = (32 * _3055) + (32 * _5819) + (32 * _7579) + 288
                            _8411 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + 320 len 32 * _8411] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8411]
                            mem[_2907 + 128] = (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + 320
                            _9115 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + 352 len 32 * _9115] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9115]
                            mem[_2907 + 160] = (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + (32 * _9115) + 352
                            _9691 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + (32 * _9115) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + (32 * _9115) + (32 * _9691) + 384
                            u = _2907 + (32 * _3055) + (32 * _5819) + (32 * _7579) + (32 * _8411) + (32 * _9115) + 384
                            while idx < _9691:
                                mem[u] = t + -_2907 + -(32 * _3055) + -(32 * _5819) + -(32 * _7579) + -(32 * _8411) + -(32 * _9115) - 384
                                _10075 = mem[s]
                                _10126 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10126:
                                    mem[v + t + 32] = mem[_10075 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10126) > _10126:
                                    mem[t + _10126 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10126) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6140 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6140] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6140 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6140 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6140 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6140 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6140 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6140 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6140 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6140 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6140
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6204 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6204] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6204 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6204 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6204 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6204 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6204 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6204 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6204 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6204 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6204
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5683 = mem[64]
                            mem[mem[64]] = 192
                            _5883 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7580 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7580] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7580]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7580) + 256
                            _8412 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + 288 len 32 * _8412] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8412]
                            mem[_5683 + 96] = (32 * _5883) + (32 * _7580) + (32 * _8412) + 288
                            _9116 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + 320 len 32 * _9116] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9116]
                            mem[_5683 + 128] = (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + 320
                            _9692 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + 352 len 32 * _9692] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9692]
                            mem[_5683 + 160] = (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + (32 * _9692) + 352
                            _10172 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + (32 * _9692) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + (32 * _9692) + (32 * _10172) + 384
                            u = _5683 + (32 * _5883) + (32 * _7580) + (32 * _8412) + (32 * _9116) + (32 * _9692) + 384
                            while idx < _10172:
                                mem[u] = t + -_5683 + -(32 * _5883) + -(32 * _7580) + -(32 * _8412) + -(32 * _9116) + -(32 * _9692) - 384
                                _10396 = mem[s]
                                _10446 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10446:
                                    mem[v + t + 32] = mem[_10396 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10446) > _10446:
                                    mem[t + _10446 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10446) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3518 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3518] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3518 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3518 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3518 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3518 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3518 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3518 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3518 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3518 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3518
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3581 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3581] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3581 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3581 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3581 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3581 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3581 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3581 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3581 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3581 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3581
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2909 = mem[64]
                            mem[mem[64]] = 192
                            _3061 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5821 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5821] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5821]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5821) + 256
                            _7581 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + 288 len 32 * _7581] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7581]
                            mem[_2909 + 96] = (32 * _3061) + (32 * _5821) + (32 * _7581) + 288
                            _8413 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + 320 len 32 * _8413] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8413]
                            mem[_2909 + 128] = (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + 320
                            _9117 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + 352 len 32 * _9117] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9117]
                            mem[_2909 + 160] = (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + (32 * _9117) + 352
                            _9693 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + (32 * _9117) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + (32 * _9117) + (32 * _9693) + 384
                            u = _2909 + (32 * _3061) + (32 * _5821) + (32 * _7581) + (32 * _8413) + (32 * _9117) + 384
                            while idx < _9693:
                                mem[u] = t + -_2909 + -(32 * _3061) + -(32 * _5821) + -(32 * _7581) + -(32 * _8413) + -(32 * _9117) - 384
                                _10077 = mem[s]
                                _10127 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10127:
                                    mem[v + t + 32] = mem[_10077 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10127) > _10127:
                                    mem[t + _10127 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10127) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6142 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6142] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6142 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6142 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6142 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6142 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6142 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6142 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6142 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6142 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6142
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6206 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6206] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6206 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6206 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6206 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6206 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6206 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6206 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6206 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6206 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6206
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5689 = mem[64]
                            mem[mem[64]] = 192
                            _5885 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7582 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7582] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7582]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7582) + 256
                            _8414 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + 288 len 32 * _8414] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8414]
                            mem[_5689 + 96] = (32 * _5885) + (32 * _7582) + (32 * _8414) + 288
                            _9118 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + 320 len 32 * _9118] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9118]
                            mem[_5689 + 128] = (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + 320
                            _9694 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + 352 len 32 * _9694] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9694]
                            mem[_5689 + 160] = (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + (32 * _9694) + 352
                            _10174 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + (32 * _9694) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + (32 * _9694) + (32 * _10174) + 384
                            u = _5689 + (32 * _5885) + (32 * _7582) + (32 * _8414) + (32 * _9118) + (32 * _9694) + 384
                            while idx < _10174:
                                mem[u] = t + -_5689 + -(32 * _5885) + -(32 * _7582) + -(32 * _8414) + -(32 * _9118) + -(32 * _9694) - 384
                                _10398 = mem[s]
                                _10447 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10447:
                                    mem[v + t + 32] = mem[_10398 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10447) > _10447:
                                    mem[t + _10447 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10447) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3520 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3520] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3520 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3520 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3520 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3520 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3520 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3520 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3520 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3520 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3520
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3583 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3583] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3583 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3583 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3583 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3583 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3583 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3583 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3583 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3583 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3583
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2911 = mem[64]
                            mem[mem[64]] = 192
                            _3067 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5823 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5823] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5823]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5823) + 256
                            _7583 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2911 + (32 * mem[96]) + (32 * _5823) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2911 + (32 * mem[96]) + (32 * _5823) + 288 len 32 * _7583] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7583]
                            mem[_2911 + 96] = (32 * mem[96]) + (32 * _5823) + (32 * _7583) + 288
                            _8415 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + 320 len 32 * _8415] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8415]
                            mem[_2911 + 128] = (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + 320
                            _9119 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + 352 len 32 * _9119] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9119]
                            mem[_2911 + 160] = (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + (32 * _9119) + 352
                            _9695 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + (32 * _9119) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + (32 * _9119) + (32 * _9695) + 384
                            u = _2911 + (32 * _3067) + (32 * _5823) + (32 * _7583) + (32 * _8415) + (32 * _9119) + 384
                            while idx < _9695:
                                mem[u] = t + -_2911 + -(32 * _3067) + -(32 * _5823) + -(32 * _7583) + -(32 * _8415) + -(32 * _9119) - 384
                                _10079 = mem[s]
                                _10128 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10128:
                                    mem[v + t + 32] = mem[_10079 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10128) > _10128:
                                    mem[t + _10128 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10128) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6144 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6144] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6144 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6144 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6144 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6144 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6144 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6144 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6144 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6144 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6144
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6208 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6208] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6208 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6208 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6208 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6208 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6208 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6208 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6208 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6208 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6208
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5695 = mem[64]
                            mem[mem[64]] = 192
                            _5887 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7584 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7584] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7584]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7584) + 256
                            _8416 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + 288 len 32 * _8416] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8416]
                            mem[_5695 + 96] = (32 * _5887) + (32 * _7584) + (32 * _8416) + 288
                            _9120 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + 320 len 32 * _9120] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9120]
                            mem[_5695 + 128] = (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + 320
                            _9696 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + 352 len 32 * _9696] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9696]
                            mem[_5695 + 160] = (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + (32 * _9696) + 352
                            _10176 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + (32 * _9696) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + (32 * _9696) + (32 * _10176) + 384
                            u = _5695 + (32 * _5887) + (32 * _7584) + (32 * _8416) + (32 * _9120) + (32 * _9696) + 384
                            while idx < _10176:
                                mem[u] = t + -_5695 + -(32 * _5887) + -(32 * _7584) + -(32 * _8416) + -(32 * _9120) + -(32 * _9696) - 384
                                _10400 = mem[s]
                                _10448 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10448:
                                    mem[v + t + 32] = mem[_10400 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10448) > _10448:
                                    mem[t + _10448 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10448) + t + 32
                                u = u + 32
                                continue 
    else:
        mem[128 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
        if sub_20e3b268[address(arg1)] > test266151307():
            revert with 0, 65
        mem[(32 * sub_20e3b268[address(arg1)]) + 128] = sub_20e3b268[address(arg1)]
        if not sub_20e3b268[address(arg1)]:
            if sub_20e3b268[address(arg1)] > test266151307():
                revert with 0, 65
            mem[(64 * sub_20e3b268[address(arg1)]) + 160] = sub_20e3b268[address(arg1)]
            if not sub_20e3b268[address(arg1)]:
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3522 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3522] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3522 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3522 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3522 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3522 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3522 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3522 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3522 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3522 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3522
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3585 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3585] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3585 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3585 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3585 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3585 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3585 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3585 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3585 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3585 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3585
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2913 = mem[64]
                            mem[mem[64]] = 192
                            _3073 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5825 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5825] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5825]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5825) + 256
                            _7585 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + 288 len 32 * _7585] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7585]
                            mem[_2913 + 96] = (32 * _3073) + (32 * _5825) + (32 * _7585) + 288
                            _8417 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + 320 len 32 * _8417] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8417]
                            mem[_2913 + 128] = (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + 320
                            _9121 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + 352 len 32 * _9121] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9121]
                            mem[_2913 + 160] = (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + (32 * _9121) + 352
                            _9697 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + (32 * _9121) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + (32 * _9121) + (32 * _9697) + 384
                            u = _2913 + (32 * _3073) + (32 * _5825) + (32 * _7585) + (32 * _8417) + (32 * _9121) + 384
                            while idx < _9697:
                                mem[u] = t + -_2913 + -(32 * _3073) + -(32 * _5825) + -(32 * _7585) + -(32 * _8417) + -(32 * _9121) - 384
                                _10081 = mem[s]
                                _10129 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10129:
                                    mem[v + t + 32] = mem[_10081 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10129) > _10129:
                                    mem[t + _10129 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10129) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6146 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6146] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6146 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6146 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6146 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6146 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6146 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6146 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6146 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6146 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6146
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6210 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6210] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6210 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6210 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6210 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6210 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6210 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6210 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6210 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6210 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6210
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5701 = mem[64]
                            mem[mem[64]] = 192
                            _5889 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7586 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7586] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7586]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7586) + 256
                            _8418 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5701 + (32 * mem[96]) + (32 * _7586) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5701 + (32 * mem[96]) + (32 * _7586) + 288 len 32 * _8418] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8418]
                            mem[_5701 + 96] = (32 * mem[96]) + (32 * _7586) + (32 * _8418) + 288
                            _9122 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + 320 len 32 * _9122] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9122]
                            mem[_5701 + 128] = (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + 320
                            _9698 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + 352 len 32 * _9698] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9698]
                            mem[_5701 + 160] = (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + (32 * _9698) + 352
                            _10178 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + (32 * _9698) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + (32 * _9698) + (32 * _10178) + 384
                            u = _5701 + (32 * _5889) + (32 * _7586) + (32 * _8418) + (32 * _9122) + (32 * _9698) + 384
                            while idx < _10178:
                                mem[u] = t + -_5701 + -(32 * _5889) + -(32 * _7586) + -(32 * _8418) + -(32 * _9122) + -(32 * _9698) - 384
                                _10402 = mem[s]
                                _10449 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10449:
                                    mem[v + t + 32] = mem[_10402 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10449) > _10449:
                                    mem[t + _10449 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10449) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3524 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3524] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3524 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3524 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3524 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3524 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3524 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3524 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3524 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3524 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3524
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3587 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3587] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3587 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3587 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3587 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3587 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3587 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3587 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3587 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3587 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3587
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2915 = mem[64]
                            mem[mem[64]] = 192
                            _3079 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5827 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5827] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5827]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5827) + 256
                            _7587 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + 288 len 32 * _7587] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7587]
                            mem[_2915 + 96] = (32 * _3079) + (32 * _5827) + (32 * _7587) + 288
                            _8419 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + 320 len 32 * _8419] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8419]
                            mem[_2915 + 128] = (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + 320
                            _9123 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + 352 len 32 * _9123] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9123]
                            mem[_2915 + 160] = (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + (32 * _9123) + 352
                            _9699 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + (32 * _9123) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + (32 * _9123) + (32 * _9699) + 384
                            u = _2915 + (32 * _3079) + (32 * _5827) + (32 * _7587) + (32 * _8419) + (32 * _9123) + 384
                            while idx < _9699:
                                mem[u] = t + -_2915 + -(32 * _3079) + -(32 * _5827) + -(32 * _7587) + -(32 * _8419) + -(32 * _9123) - 384
                                _10083 = mem[s]
                                _10130 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10130:
                                    mem[v + t + 32] = mem[_10083 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10130) > _10130:
                                    mem[t + _10130 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10130) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6148 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6148] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6148 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6148 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6148 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6148 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6148 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6148 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6148 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6148 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6148
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6212 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6212] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6212 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6212 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6212 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6212 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6212 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6212 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6212 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6212 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6212
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5707 = mem[64]
                            mem[mem[64]] = 192
                            _5891 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7588 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7588] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7588]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7588) + 256
                            _8420 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + 288 len 32 * _8420] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8420]
                            mem[_5707 + 96] = (32 * _5891) + (32 * _7588) + (32 * _8420) + 288
                            _9124 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + 320 len 32 * _9124] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9124]
                            mem[_5707 + 128] = (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + 320
                            _9700 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + 352 len 32 * _9700] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9700]
                            mem[_5707 + 160] = (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + (32 * _9700) + 352
                            _10180 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + (32 * _9700) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + (32 * _9700) + (32 * _10180) + 384
                            u = _5707 + (32 * _5891) + (32 * _7588) + (32 * _8420) + (32 * _9124) + (32 * _9700) + 384
                            while idx < _10180:
                                mem[u] = t + -_5707 + -(32 * _5891) + -(32 * _7588) + -(32 * _8420) + -(32 * _9124) + -(32 * _9700) - 384
                                _10404 = mem[s]
                                _10450 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10450:
                                    mem[v + t + 32] = mem[_10404 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10450) > _10450:
                                    mem[t + _10450 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10450) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3526 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3526] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3526 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3526 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3526 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3526 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3526 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3526 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3526 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3526 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3526
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3589 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3589] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3589 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3589 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3589 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3589 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3589 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3589 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3589 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3589 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3589
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2917 = mem[64]
                            mem[mem[64]] = 192
                            _3085 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5829 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5829] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5829]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5829) + 256
                            _7589 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + 288 len 32 * _7589] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7589]
                            mem[_2917 + 96] = (32 * _3085) + (32 * _5829) + (32 * _7589) + 288
                            _8421 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + 320 len 32 * _8421] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8421]
                            mem[_2917 + 128] = (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + 320
                            _9125 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + 352 len 32 * _9125] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9125]
                            mem[_2917 + 160] = (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + (32 * _9125) + 352
                            _9701 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + (32 * _9125) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + (32 * _9125) + (32 * _9701) + 384
                            u = _2917 + (32 * _3085) + (32 * _5829) + (32 * _7589) + (32 * _8421) + (32 * _9125) + 384
                            while idx < _9701:
                                mem[u] = t + -_2917 + -(32 * _3085) + -(32 * _5829) + -(32 * _7589) + -(32 * _8421) + -(32 * _9125) - 384
                                _10085 = mem[s]
                                _10131 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10131:
                                    mem[v + t + 32] = mem[_10085 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10131) > _10131:
                                    mem[t + _10131 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10131) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6150 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6150] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6150 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6150 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6150 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6150 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6150 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6150 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6150 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6150 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6150
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6214 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6214] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6214 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6214 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6214 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6214 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6214 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6214 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6214 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6214 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6214
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5713 = mem[64]
                            mem[mem[64]] = 192
                            _5893 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7590 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7590] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7590]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7590) + 256
                            _8422 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + 288 len 32 * _8422] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8422]
                            mem[_5713 + 96] = (32 * _5893) + (32 * _7590) + (32 * _8422) + 288
                            _9126 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + 320 len 32 * _9126] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9126]
                            mem[_5713 + 128] = (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + 320
                            _9702 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + 352 len 32 * _9702] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9702]
                            mem[_5713 + 160] = (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + (32 * _9702) + 352
                            _10182 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + (32 * _9702) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + (32 * _9702) + (32 * _10182) + 384
                            u = _5713 + (32 * _5893) + (32 * _7590) + (32 * _8422) + (32 * _9126) + (32 * _9702) + 384
                            while idx < _10182:
                                mem[u] = t + -_5713 + -(32 * _5893) + -(32 * _7590) + -(32 * _8422) + -(32 * _9126) + -(32 * _9702) - 384
                                _10406 = mem[s]
                                _10451 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10451:
                                    mem[v + t + 32] = mem[_10406 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10451) > _10451:
                                    mem[t + _10451 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10451) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3528 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3528] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3528 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3528 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3528 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3528 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3528 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3528 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3528 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3528 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3528
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3591 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3591] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3591 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3591 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3591 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3591 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3591 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3591 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3591 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3591 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3591
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2919 = mem[64]
                            mem[mem[64]] = 192
                            _3091 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5831 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5831] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5831]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5831) + 256
                            _7591 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + 288 len 32 * _7591] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7591]
                            mem[_2919 + 96] = (32 * _3091) + (32 * _5831) + (32 * _7591) + 288
                            _8423 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + 320 len 32 * _8423] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8423]
                            mem[_2919 + 128] = (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + 320
                            _9127 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + 352 len 32 * _9127] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9127]
                            mem[_2919 + 160] = (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + (32 * _9127) + 352
                            _9703 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + (32 * _9127) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + (32 * _9127) + (32 * _9703) + 384
                            u = _2919 + (32 * _3091) + (32 * _5831) + (32 * _7591) + (32 * _8423) + (32 * _9127) + 384
                            while idx < _9703:
                                mem[u] = t + -_2919 + -(32 * _3091) + -(32 * _5831) + -(32 * _7591) + -(32 * _8423) + -(32 * _9127) - 384
                                _10087 = mem[s]
                                _10132 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10132:
                                    mem[v + t + 32] = mem[_10087 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10132) > _10132:
                                    mem[t + _10132 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10132) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6152 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6152] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6152 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6152 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6152 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6152 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6152 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6152 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6152 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6152 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6152
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6216 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6216] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6216 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6216 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6216 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6216 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6216 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6216 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6216 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6216 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6216
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5719 = mem[64]
                            mem[mem[64]] = 192
                            _5895 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7592 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7592] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7592]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7592) + 256
                            _8424 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + 288 len 32 * _8424] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8424]
                            mem[_5719 + 96] = (32 * _5895) + (32 * _7592) + (32 * _8424) + 288
                            _9128 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + 320 len 32 * _9128] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9128]
                            mem[_5719 + 128] = (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + 320
                            _9704 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + 352 len 32 * _9704] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9704]
                            mem[_5719 + 160] = (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + (32 * _9704) + 352
                            _10184 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + (32 * _9704) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + (32 * _9704) + (32 * _10184) + 384
                            u = _5719 + (32 * _5895) + (32 * _7592) + (32 * _8424) + (32 * _9128) + (32 * _9704) + 384
                            while idx < _10184:
                                mem[u] = t + -_5719 + -(32 * _5895) + -(32 * _7592) + -(32 * _8424) + -(32 * _9128) + -(32 * _9704) - 384
                                _10408 = mem[s]
                                _10452 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10452:
                                    mem[v + t + 32] = mem[_10408 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10452) > _10452:
                                    mem[t + _10452 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10452) + t + 32
                                u = u + 32
                                continue 
            else:
                mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3530 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3530] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3530 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3530 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3530 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3530 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3530 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3530 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3530 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3530 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3530
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3593 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3593] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3593 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3593 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3593 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3593 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3593 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3593 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3593 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3593 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3593
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2921 = mem[64]
                            mem[mem[64]] = 192
                            _3097 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5833 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5833] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5833]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5833) + 256
                            _7593 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + 288 len 32 * _7593] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7593]
                            mem[_2921 + 96] = (32 * _3097) + (32 * _5833) + (32 * _7593) + 288
                            _8425 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + 320 len 32 * _8425] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8425]
                            mem[_2921 + 128] = (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + 320
                            _9129 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + 352 len 32 * _9129] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9129]
                            mem[_2921 + 160] = (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + (32 * _9129) + 352
                            _9705 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + (32 * _9129) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + (32 * _9129) + (32 * _9705) + 384
                            u = _2921 + (32 * _3097) + (32 * _5833) + (32 * _7593) + (32 * _8425) + (32 * _9129) + 384
                            while idx < _9705:
                                mem[u] = t + -_2921 + -(32 * _3097) + -(32 * _5833) + -(32 * _7593) + -(32 * _8425) + -(32 * _9129) - 384
                                _10089 = mem[s]
                                _10133 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10133:
                                    mem[v + t + 32] = mem[_10089 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10133) > _10133:
                                    mem[t + _10133 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10133) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6154 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6154] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6154 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6154 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6154 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6154 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6154 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6154 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6154 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6154 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6154
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6218 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6218] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6218 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6218 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6218 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6218 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6218 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6218 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6218 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6218 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6218
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5725 = mem[64]
                            mem[mem[64]] = 192
                            _5897 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7594 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7594] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7594]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7594) + 256
                            _8426 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + 288 len 32 * _8426] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8426]
                            mem[_5725 + 96] = (32 * _5897) + (32 * _7594) + (32 * _8426) + 288
                            _9130 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + 320 len 32 * _9130] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9130]
                            mem[_5725 + 128] = (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + 320
                            _9706 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + 352 len 32 * _9706] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9706]
                            mem[_5725 + 160] = (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + (32 * _9706) + 352
                            _10186 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + (32 * _9706) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + (32 * _9706) + (32 * _10186) + 384
                            u = _5725 + (32 * _5897) + (32 * _7594) + (32 * _8426) + (32 * _9130) + (32 * _9706) + 384
                            while idx < _10186:
                                mem[u] = t + -_5725 + -(32 * _5897) + -(32 * _7594) + -(32 * _8426) + -(32 * _9130) + -(32 * _9706) - 384
                                _10410 = mem[s]
                                _10453 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10453:
                                    mem[v + t + 32] = mem[_10410 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10453) > _10453:
                                    mem[t + _10453 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10453) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3532 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3532] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3532 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3532 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3532 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3532 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3532 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3532 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3532 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3532 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3532
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3595 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3595] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3595 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3595 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3595 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3595 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3595 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3595 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3595 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3595 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3595
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2923 = mem[64]
                            mem[mem[64]] = 192
                            _3103 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5835 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5835] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5835]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5835) + 256
                            _7595 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + 288 len 32 * _7595] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7595]
                            mem[_2923 + 96] = (32 * _3103) + (32 * _5835) + (32 * _7595) + 288
                            _8427 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + 320 len 32 * _8427] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8427]
                            mem[_2923 + 128] = (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + 320
                            _9131 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + 352 len 32 * _9131] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9131]
                            mem[_2923 + 160] = (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + (32 * _9131) + 352
                            _9707 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + (32 * _9131) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + (32 * _9131) + (32 * _9707) + 384
                            u = _2923 + (32 * _3103) + (32 * _5835) + (32 * _7595) + (32 * _8427) + (32 * _9131) + 384
                            while idx < _9707:
                                mem[u] = t + -_2923 + -(32 * _3103) + -(32 * _5835) + -(32 * _7595) + -(32 * _8427) + -(32 * _9131) - 384
                                _10091 = mem[s]
                                _10134 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10134:
                                    mem[v + t + 32] = mem[_10091 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10134) > _10134:
                                    mem[t + _10134 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10134) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6156 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6156] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6156 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6156 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6156 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6156 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6156 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6156 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6156 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6156 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6156
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6220 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6220] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6220 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6220 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6220 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6220 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6220 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6220 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6220 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6220 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6220
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5731 = mem[64]
                            mem[mem[64]] = 192
                            _5899 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7596 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7596] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7596]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7596) + 256
                            _8428 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + 288 len 32 * _8428] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8428]
                            mem[_5731 + 96] = (32 * _5899) + (32 * _7596) + (32 * _8428) + 288
                            _9132 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + 320 len 32 * _9132] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9132]
                            mem[_5731 + 128] = (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + 320
                            _9708 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + 352 len 32 * _9708] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9708]
                            mem[_5731 + 160] = (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + (32 * _9708) + 352
                            _10188 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + (32 * _9708) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + (32 * _9708) + (32 * _10188) + 384
                            u = _5731 + (32 * _5899) + (32 * _7596) + (32 * _8428) + (32 * _9132) + (32 * _9708) + 384
                            while idx < _10188:
                                mem[u] = t + -_5731 + -(32 * _5899) + -(32 * _7596) + -(32 * _8428) + -(32 * _9132) + -(32 * _9708) - 384
                                _10412 = mem[s]
                                _10454 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10454:
                                    mem[v + t + 32] = mem[_10412 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10454) > _10454:
                                    mem[t + _10454 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10454) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3534 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3534] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3534 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3534 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3534 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3534 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3534 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3534 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3534 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3534 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3534
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3597 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3597] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3597 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3597 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3597 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3597 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3597 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3597 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3597 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3597 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3597
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2925 = mem[64]
                            mem[mem[64]] = 192
                            _3109 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5837 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5837] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5837]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5837) + 256
                            _7597 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2925 + (32 * mem[96]) + (32 * _5837) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2925 + (32 * mem[96]) + (32 * _5837) + 288 len 32 * _7597] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7597]
                            mem[_2925 + 96] = (32 * mem[96]) + (32 * _5837) + (32 * _7597) + 288
                            _8429 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + 320 len 32 * _8429] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8429]
                            mem[_2925 + 128] = (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + 320
                            _9133 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + 352 len 32 * _9133] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9133]
                            mem[_2925 + 160] = (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + (32 * _9133) + 352
                            _9709 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + (32 * _9133) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + (32 * _9133) + (32 * _9709) + 384
                            u = _2925 + (32 * _3109) + (32 * _5837) + (32 * _7597) + (32 * _8429) + (32 * _9133) + 384
                            while idx < _9709:
                                mem[u] = t + -_2925 + -(32 * _3109) + -(32 * _5837) + -(32 * _7597) + -(32 * _8429) + -(32 * _9133) - 384
                                _10093 = mem[s]
                                _10135 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10135:
                                    mem[v + t + 32] = mem[_10093 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10135) > _10135:
                                    mem[t + _10135 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10135) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6158 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6158] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6158 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6158 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6158 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6158 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6158 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6158 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6158 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6158 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6158
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6222 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6222] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6222 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6222 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6222 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6222 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6222 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6222 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6222 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6222 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6222
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5737 = mem[64]
                            mem[mem[64]] = 192
                            _5901 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7598 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7598] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7598]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7598) + 256
                            _8430 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + 288 len 32 * _8430] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8430]
                            mem[_5737 + 96] = (32 * _5901) + (32 * _7598) + (32 * _8430) + 288
                            _9134 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + 320 len 32 * _9134] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9134]
                            mem[_5737 + 128] = (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + 320
                            _9710 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + 352 len 32 * _9710] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9710]
                            mem[_5737 + 160] = (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + (32 * _9710) + 352
                            _10190 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + (32 * _9710) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + (32 * _9710) + (32 * _10190) + 384
                            u = _5737 + (32 * _5901) + (32 * _7598) + (32 * _8430) + (32 * _9134) + (32 * _9710) + 384
                            while idx < _10190:
                                mem[u] = t + -_5737 + -(32 * _5901) + -(32 * _7598) + -(32 * _8430) + -(32 * _9134) + -(32 * _9710) - 384
                                _10414 = mem[s]
                                _10455 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10455:
                                    mem[v + t + 32] = mem[_10414 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10455) > _10455:
                                    mem[t + _10455 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10455) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3536 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3536] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3536 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3536 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3536 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3536 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3536 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3536 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3536 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3536 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3536
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3599 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3599] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3599 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3599 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3599 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3599 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3599 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3599 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3599 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3599 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3599
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2927 = mem[64]
                            mem[mem[64]] = 192
                            _3115 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5839 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5839] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5839]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5839) + 256
                            _7599 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + 288 len 32 * _7599] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7599]
                            mem[_2927 + 96] = (32 * _3115) + (32 * _5839) + (32 * _7599) + 288
                            _8431 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + 320 len 32 * _8431] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8431]
                            mem[_2927 + 128] = (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + 320
                            _9135 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + 352 len 32 * _9135] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9135]
                            mem[_2927 + 160] = (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + (32 * _9135) + 352
                            _9711 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + (32 * _9135) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + (32 * _9135) + (32 * _9711) + 384
                            u = _2927 + (32 * _3115) + (32 * _5839) + (32 * _7599) + (32 * _8431) + (32 * _9135) + 384
                            while idx < _9711:
                                mem[u] = t + -_2927 + -(32 * _3115) + -(32 * _5839) + -(32 * _7599) + -(32 * _8431) + -(32 * _9135) - 384
                                _10095 = mem[s]
                                _10136 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10136:
                                    mem[v + t + 32] = mem[_10095 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10136) > _10136:
                                    mem[t + _10136 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10136) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6160 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6160] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6160 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6160 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6160 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6160 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6160 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6160 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6160 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6160 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6160
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6224 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6224] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6224 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6224 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6224 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6224 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6224 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6224 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6224 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6224 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6224
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5743 = mem[64]
                            mem[mem[64]] = 192
                            _5903 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7600 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7600] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7600]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7600) + 256
                            _8432 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + 288 len 32 * _8432] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8432]
                            mem[_5743 + 96] = (32 * _5903) + (32 * _7600) + (32 * _8432) + 288
                            _9136 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + 320 len 32 * _9136] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9136]
                            mem[_5743 + 128] = (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + 320
                            _9712 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + 352 len 32 * _9712] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9712]
                            mem[_5743 + 160] = (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + (32 * _9712) + 352
                            _10192 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + (32 * _9712) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + (32 * _9712) + (32 * _10192) + 384
                            u = _5743 + (32 * _5903) + (32 * _7600) + (32 * _8432) + (32 * _9136) + (32 * _9712) + 384
                            while idx < _10192:
                                mem[u] = t + -_5743 + -(32 * _5903) + -(32 * _7600) + -(32 * _8432) + -(32 * _9136) + -(32 * _9712) - 384
                                _10416 = mem[s]
                                _10456 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10456:
                                    mem[v + t + 32] = mem[_10416 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10456) > _10456:
                                    mem[t + _10456 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10456) + t + 32
                                u = u + 32
                                continue 
        else:
            mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
            if sub_20e3b268[address(arg1)] > test266151307():
                revert with 0, 65
            mem[(64 * sub_20e3b268[address(arg1)]) + 160] = sub_20e3b268[address(arg1)]
            if not sub_20e3b268[address(arg1)]:
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3538 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3538] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3538 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3538 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3538 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3538 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3538 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3538 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3538 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3538 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3538
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3601 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3601] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3601 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3601 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3601 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3601 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3601 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3601 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3601 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3601 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3601
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2929 = mem[64]
                            mem[mem[64]] = 192
                            _3121 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5841 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5841] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5841]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5841) + 256
                            _7601 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + 288 len 32 * _7601] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7601]
                            mem[_2929 + 96] = (32 * _3121) + (32 * _5841) + (32 * _7601) + 288
                            _8433 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + 320 len 32 * _8433] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8433]
                            mem[_2929 + 128] = (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + 320
                            _9137 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + 352 len 32 * _9137] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9137]
                            mem[_2929 + 160] = (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + (32 * _9137) + 352
                            _9713 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + (32 * _9137) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + (32 * _9137) + (32 * _9713) + 384
                            u = _2929 + (32 * _3121) + (32 * _5841) + (32 * _7601) + (32 * _8433) + (32 * _9137) + 384
                            while idx < _9713:
                                mem[u] = t + -_2929 + -(32 * _3121) + -(32 * _5841) + -(32 * _7601) + -(32 * _8433) + -(32 * _9137) - 384
                                _10097 = mem[s]
                                _10137 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10137:
                                    mem[v + t + 32] = mem[_10097 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10137) > _10137:
                                    mem[t + _10137 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10137) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6162 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6162] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6162 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6162 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6162 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6162 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6162 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6162 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6162 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6162 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6162
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6226 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6226] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6226 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6226 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6226 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6226 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6226 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6226 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6226 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6226 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6226
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5749 = mem[64]
                            mem[mem[64]] = 192
                            _5905 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7602 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7602] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7602]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7602) + 256
                            _8434 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + 288 len 32 * _8434] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8434]
                            mem[_5749 + 96] = (32 * _5905) + (32 * _7602) + (32 * _8434) + 288
                            _9138 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + 320 len 32 * _9138] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9138]
                            mem[_5749 + 128] = (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + 320
                            _9714 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + 352 len 32 * _9714] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9714]
                            mem[_5749 + 160] = (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + (32 * _9714) + 352
                            _10194 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + (32 * _9714) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + (32 * _9714) + (32 * _10194) + 384
                            u = _5749 + (32 * _5905) + (32 * _7602) + (32 * _8434) + (32 * _9138) + (32 * _9714) + 384
                            while idx < _10194:
                                mem[u] = t + -_5749 + -(32 * _5905) + -(32 * _7602) + -(32 * _8434) + -(32 * _9138) + -(32 * _9714) - 384
                                _10418 = mem[s]
                                _10457 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10457:
                                    mem[v + t + 32] = mem[_10418 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10457) > _10457:
                                    mem[t + _10457 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10457) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3540 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3540] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3540 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3540 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3540 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3540 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3540 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3540 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3540 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3540 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3540
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3603 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3603] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3603 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3603 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3603 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3603 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3603 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3603 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3603 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3603 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3603
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2931 = mem[64]
                            mem[mem[64]] = 192
                            _3127 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5843 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5843] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5843]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5843) + 256
                            _7603 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + 288 len 32 * _7603] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7603]
                            mem[_2931 + 96] = (32 * _3127) + (32 * _5843) + (32 * _7603) + 288
                            _8435 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + 320 len 32 * _8435] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8435]
                            mem[_2931 + 128] = (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + 320
                            _9139 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + 352 len 32 * _9139] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9139]
                            mem[_2931 + 160] = (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + (32 * _9139) + 352
                            _9715 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + (32 * _9139) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + (32 * _9139) + (32 * _9715) + 384
                            u = _2931 + (32 * _3127) + (32 * _5843) + (32 * _7603) + (32 * _8435) + (32 * _9139) + 384
                            while idx < _9715:
                                mem[u] = t + -_2931 + -(32 * _3127) + -(32 * _5843) + -(32 * _7603) + -(32 * _8435) + -(32 * _9139) - 384
                                _10099 = mem[s]
                                _10138 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10138:
                                    mem[v + t + 32] = mem[_10099 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10138) > _10138:
                                    mem[t + _10138 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10138) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6164 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6164] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6164 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6164 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6164 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6164 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6164 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6164 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6164 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6164 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6164
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6228 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6228] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6228 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6228 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6228 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6228 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6228 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6228 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6228 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6228 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6228
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5755 = mem[64]
                            mem[mem[64]] = 192
                            _5907 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7604 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7604] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7604]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7604) + 256
                            _8436 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + 288 len 32 * _8436] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8436]
                            mem[_5755 + 96] = (32 * _5907) + (32 * _7604) + (32 * _8436) + 288
                            _9140 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + 320 len 32 * _9140] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9140]
                            mem[_5755 + 128] = (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + 320
                            _9716 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + 352 len 32 * _9716] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9716]
                            mem[_5755 + 160] = (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + (32 * _9716) + 352
                            _10196 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + (32 * _9716) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + (32 * _9716) + (32 * _10196) + 384
                            u = _5755 + (32 * _5907) + (32 * _7604) + (32 * _8436) + (32 * _9140) + (32 * _9716) + 384
                            while idx < _10196:
                                mem[u] = t + -_5755 + -(32 * _5907) + -(32 * _7604) + -(32 * _8436) + -(32 * _9140) + -(32 * _9716) - 384
                                _10420 = mem[s]
                                _10458 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10458:
                                    mem[v + t + 32] = mem[_10420 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10458) > _10458:
                                    mem[t + _10458 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10458) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3542 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3542] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3542 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3542 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3542 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3542 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3542 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3542 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3542 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3542 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3542
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3605 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3605] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3605 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3605 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3605 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3605 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3605 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3605 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3605 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3605 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3605
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2933 = mem[64]
                            mem[mem[64]] = 192
                            _3133 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5845 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5845] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5845]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5845) + 256
                            _7605 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2933 + (32 * mem[96]) + (32 * _5845) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2933 + (32 * mem[96]) + (32 * _5845) + 288 len 32 * _7605] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7605]
                            mem[_2933 + 96] = (32 * mem[96]) + (32 * _5845) + (32 * _7605) + 288
                            _8437 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + 320 len 32 * _8437] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8437]
                            mem[_2933 + 128] = (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + 320
                            _9141 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + 352 len 32 * _9141] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9141]
                            mem[_2933 + 160] = (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + (32 * _9141) + 352
                            _9717 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + (32 * _9141) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + (32 * _9141) + (32 * _9717) + 384
                            u = _2933 + (32 * _3133) + (32 * _5845) + (32 * _7605) + (32 * _8437) + (32 * _9141) + 384
                            while idx < _9717:
                                mem[u] = t + -_2933 + -(32 * _3133) + -(32 * _5845) + -(32 * _7605) + -(32 * _8437) + -(32 * _9141) - 384
                                _10101 = mem[s]
                                _10139 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10139:
                                    mem[v + t + 32] = mem[_10101 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10139) > _10139:
                                    mem[t + _10139 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10139) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6166 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6166] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6166 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6166 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6166 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6166 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6166 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6166 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6166 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6166 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6166
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6230 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6230] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6230 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6230 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6230 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6230 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6230 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6230 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6230 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6230 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6230
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5761 = mem[64]
                            mem[mem[64]] = 192
                            _5909 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7606 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7606] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7606]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7606) + 256
                            _8438 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + 288 len 32 * _8438] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8438]
                            mem[_5761 + 96] = (32 * _5909) + (32 * _7606) + (32 * _8438) + 288
                            _9142 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + 320 len 32 * _9142] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9142]
                            mem[_5761 + 128] = (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + 320
                            _9718 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + 352 len 32 * _9718] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9718]
                            mem[_5761 + 160] = (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + (32 * _9718) + 352
                            _10198 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + (32 * _9718) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + (32 * _9718) + (32 * _10198) + 384
                            u = _5761 + (32 * _5909) + (32 * _7606) + (32 * _8438) + (32 * _9142) + (32 * _9718) + 384
                            while idx < _10198:
                                mem[u] = t + -_5761 + -(32 * _5909) + -(32 * _7606) + -(32 * _8438) + -(32 * _9142) + -(32 * _9718) - 384
                                _10422 = mem[s]
                                _10459 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10459:
                                    mem[v + t + 32] = mem[_10422 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10459) > _10459:
                                    mem[t + _10459 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10459) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3544 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3544] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3544 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3544 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3544 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3544 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3544 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3544 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3544 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3544 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3544
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3607 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3607] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3607 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3607 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3607 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3607 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3607 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3607 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3607 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3607 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3607
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2935 = mem[64]
                            mem[mem[64]] = 192
                            _3139 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5847 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5847] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5847]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5847) + 256
                            _7607 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + 288 len 32 * _7607] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7607]
                            mem[_2935 + 96] = (32 * _3139) + (32 * _5847) + (32 * _7607) + 288
                            _8439 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + 320 len 32 * _8439] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8439]
                            mem[_2935 + 128] = (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + 320
                            _9143 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + 352 len 32 * _9143] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9143]
                            mem[_2935 + 160] = (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + (32 * _9143) + 352
                            _9719 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + (32 * _9143) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + (32 * _9143) + (32 * _9719) + 384
                            u = _2935 + (32 * _3139) + (32 * _5847) + (32 * _7607) + (32 * _8439) + (32 * _9143) + 384
                            while idx < _9719:
                                mem[u] = t + -_2935 + -(32 * _3139) + -(32 * _5847) + -(32 * _7607) + -(32 * _8439) + -(32 * _9143) - 384
                                _10103 = mem[s]
                                _10140 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10140:
                                    mem[v + t + 32] = mem[_10103 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10140) > _10140:
                                    mem[t + _10140 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10140) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6168 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6168] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6168 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6168 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6168 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6168 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6168 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6168 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6168 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6168 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6168
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6232 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6232] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6232 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6232 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6232 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6232 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6232 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6232 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6232 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6232 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6232
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5767 = mem[64]
                            mem[mem[64]] = 192
                            _5911 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7608 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7608] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7608]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7608) + 256
                            _8440 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5767 + (32 * mem[96]) + (32 * _7608) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5767 + (32 * mem[96]) + (32 * _7608) + 288 len 32 * _8440] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8440]
                            mem[_5767 + 96] = (32 * mem[96]) + (32 * _7608) + (32 * _8440) + 288
                            _9144 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + 320 len 32 * _9144] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9144]
                            mem[_5767 + 128] = (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + 320
                            _9720 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + 352 len 32 * _9720] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9720]
                            mem[_5767 + 160] = (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + (32 * _9720) + 352
                            _10200 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + (32 * _9720) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + (32 * _9720) + (32 * _10200) + 384
                            u = _5767 + (32 * _5911) + (32 * _7608) + (32 * _8440) + (32 * _9144) + (32 * _9720) + 384
                            while idx < _10200:
                                mem[u] = t + -_5767 + -(32 * _5911) + -(32 * _7608) + -(32 * _8440) + -(32 * _9144) + -(32 * _9720) - 384
                                _10424 = mem[s]
                                _10460 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10460:
                                    mem[v + t + 32] = mem[_10424 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10460) > _10460:
                                    mem[t + _10460 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10460) + t + 32
                                u = u + 32
                                continue 
            else:
                mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                if sub_20e3b268[address(arg1)] > test266151307():
                    revert with 0, 65
                mem[(98 * sub_20e3b268[address(arg1)]) + 192] = sub_20e3b268[address(arg1)]
                if not sub_20e3b268[address(arg1)]:
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3546 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3546] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3546 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3546 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3546 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3546 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3546 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3546 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3546 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3546 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3546
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3609 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3609] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3609 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3609 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3609 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3609 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3609 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3609 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3609 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3609 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3609
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2937 = mem[64]
                            mem[mem[64]] = 192
                            _3145 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5849 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5849] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5849]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5849) + 256
                            _7609 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + 288 len 32 * _7609] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7609]
                            mem[_2937 + 96] = (32 * _3145) + (32 * _5849) + (32 * _7609) + 288
                            _8441 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + 320 len 32 * _8441] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8441]
                            mem[_2937 + 128] = (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + 320
                            _9145 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + 352 len 32 * _9145] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9145]
                            mem[_2937 + 160] = (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + (32 * _9145) + 352
                            _9721 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + (32 * _9145) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + (32 * _9145) + (32 * _9721) + 384
                            u = _2937 + (32 * _3145) + (32 * _5849) + (32 * _7609) + (32 * _8441) + (32 * _9145) + 384
                            while idx < _9721:
                                mem[u] = t + -_2937 + -(32 * _3145) + -(32 * _5849) + -(32 * _7609) + -(32 * _8441) + -(32 * _9145) - 384
                                _10105 = mem[s]
                                _10141 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10141:
                                    mem[v + t + 32] = mem[_10105 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10141) > _10141:
                                    mem[t + _10141 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10141) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6170 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6170] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6170 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6170 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6170 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6170 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6170 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6170 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6170 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6170 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6170
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6234 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6234] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6234 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6234 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6234 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6234 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6234 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6234 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6234 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6234 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6234
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5773 = mem[64]
                            mem[mem[64]] = 192
                            _5913 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7610 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7610] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7610]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7610) + 256
                            _8442 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5773 + (32 * mem[96]) + (32 * _7610) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5773 + (32 * mem[96]) + (32 * _7610) + 288 len 32 * _8442] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8442]
                            mem[_5773 + 96] = (32 * mem[96]) + (32 * _7610) + (32 * _8442) + 288
                            _9146 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + 320 len 32 * _9146] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9146]
                            mem[_5773 + 128] = (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + 320
                            _9722 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + 352 len 32 * _9722] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9722]
                            mem[_5773 + 160] = (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + (32 * _9722) + 352
                            _10202 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + (32 * _9722) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + (32 * _9722) + (32 * _10202) + 384
                            u = _5773 + (32 * _5913) + (32 * _7610) + (32 * _8442) + (32 * _9146) + (32 * _9722) + 384
                            while idx < _10202:
                                mem[u] = t + -_5773 + -(32 * _5913) + -(32 * _7610) + -(32 * _8442) + -(32 * _9146) + -(32 * _9722) - 384
                                _10426 = mem[s]
                                _10461 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10461:
                                    mem[v + t + 32] = mem[_10426 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10461) > _10461:
                                    mem[t + _10461 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10461) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3548 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3548] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3548 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3548 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3548 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3548 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3548 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3548 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3548 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3548 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3548
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3611 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3611] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3611 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3611 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3611 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3611 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3611 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3611 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3611 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3611 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3611
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2939 = mem[64]
                            mem[mem[64]] = 192
                            _3151 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5851 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5851] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5851]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5851) + 256
                            _7611 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2939 + (32 * mem[96]) + (32 * _5851) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2939 + (32 * mem[96]) + (32 * _5851) + 288 len 32 * _7611] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7611]
                            mem[_2939 + 96] = (32 * mem[96]) + (32 * _5851) + (32 * _7611) + 288
                            _8443 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + 320 len 32 * _8443] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8443]
                            mem[_2939 + 128] = (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + 320
                            _9147 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + 352 len 32 * _9147] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9147]
                            mem[_2939 + 160] = (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + (32 * _9147) + 352
                            _9723 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + (32 * _9147) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + (32 * _9147) + (32 * _9723) + 384
                            u = _2939 + (32 * _3151) + (32 * _5851) + (32 * _7611) + (32 * _8443) + (32 * _9147) + 384
                            while idx < _9723:
                                mem[u] = t + -_2939 + -(32 * _3151) + -(32 * _5851) + -(32 * _7611) + -(32 * _8443) + -(32 * _9147) - 384
                                _10107 = mem[s]
                                _10142 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10142:
                                    mem[v + t + 32] = mem[_10107 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10142) > _10142:
                                    mem[t + _10142 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10142) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6172 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6172] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6172 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6172 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6172 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6172 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6172 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6172 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6172 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6172 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6172
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6236 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6236] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6236 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6236 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6236 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6236 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6236 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6236 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6236 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6236 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6236
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5779 = mem[64]
                            mem[mem[64]] = 192
                            _5915 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7612 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7612] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7612]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7612) + 256
                            _8444 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + 288 len 32 * _8444] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8444]
                            mem[_5779 + 96] = (32 * _5915) + (32 * _7612) + (32 * _8444) + 288
                            _9148 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + 320 len 32 * _9148] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9148]
                            mem[_5779 + 128] = (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + 320
                            _9724 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + 352 len 32 * _9724] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9724]
                            mem[_5779 + 160] = (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + (32 * _9724) + 352
                            _10204 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + (32 * _9724) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + (32 * _9724) + (32 * _10204) + 384
                            u = _5779 + (32 * _5915) + (32 * _7612) + (32 * _8444) + (32 * _9148) + (32 * _9724) + 384
                            while idx < _10204:
                                mem[u] = t + -_5779 + -(32 * _5915) + -(32 * _7612) + -(32 * _8444) + -(32 * _9148) + -(32 * _9724) - 384
                                _10428 = mem[s]
                                _10462 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10462:
                                    mem[v + t + 32] = mem[_10428 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10462) > _10462:
                                    mem[t + _10462 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10462) + t + 32
                                u = u + 32
                                continue 
                else:
                    mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                    if sub_20e3b268[address(arg1)] > test266151307():
                        revert with 0, 65
                    mem[(131 * sub_20e3b268[address(arg1)]) + 224] = sub_20e3b268[address(arg1)]
                    if not sub_20e3b268[address(arg1)]:
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3550 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3550] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3550 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3550 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3550 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3550 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3550 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3550 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3550 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3550 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3550
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3613 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3613] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3613 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3613 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3613 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3613 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3613 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3613 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3613 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3613 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3613
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2941 = mem[64]
                            mem[mem[64]] = 192
                            _3157 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5853 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5853] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5853]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5853) + 256
                            _7613 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + 288 len 32 * _7613] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7613]
                            mem[_2941 + 96] = (32 * _3157) + (32 * _5853) + (32 * _7613) + 288
                            _8445 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + 320 len 32 * _8445] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8445]
                            mem[_2941 + 128] = (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + 320
                            _9149 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + 352 len 32 * _9149] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9149]
                            mem[_2941 + 160] = (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + (32 * _9149) + 352
                            _9725 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + (32 * _9149) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + (32 * _9149) + (32 * _9725) + 384
                            u = _2941 + (32 * _3157) + (32 * _5853) + (32 * _7613) + (32 * _8445) + (32 * _9149) + 384
                            while idx < _9725:
                                mem[u] = t + -_2941 + -(32 * _3157) + -(32 * _5853) + -(32 * _7613) + -(32 * _8445) + -(32 * _9149) - 384
                                _10109 = mem[s]
                                _10143 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10143:
                                    mem[v + t + 32] = mem[_10109 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10143) > _10143:
                                    mem[t + _10143 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10143) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6174 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6174] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6174 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6174 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6174 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6174 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6174 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6174 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6174 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6174 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6174
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6238 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6238] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6238 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6238 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6238 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6238 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6238 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6238 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6238 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6238 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6238
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5785 = mem[64]
                            mem[mem[64]] = 192
                            _5917 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7614 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7614] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7614]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7614) + 256
                            _8446 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + 288 len 32 * _8446] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8446]
                            mem[_5785 + 96] = (32 * _5917) + (32 * _7614) + (32 * _8446) + 288
                            _9150 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + 320 len 32 * _9150] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9150]
                            mem[_5785 + 128] = (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + 320
                            _9726 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + 352 len 32 * _9726] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9726]
                            mem[_5785 + 160] = (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + (32 * _9726) + 352
                            _10206 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + (32 * _9726) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + (32 * _9726) + (32 * _10206) + 384
                            u = _5785 + (32 * _5917) + (32 * _7614) + (32 * _8446) + (32 * _9150) + (32 * _9726) + 384
                            while idx < _10206:
                                mem[u] = t + -_5785 + -(32 * _5917) + -(32 * _7614) + -(32 * _8446) + -(32 * _9150) + -(32 * _9726) - 384
                                _10430 = mem[s]
                                _10463 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10463:
                                    mem[v + t + 32] = mem[_10430 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10463) > _10463:
                                    mem[t + _10463 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10463) + t + 32
                                u = u + 32
                                continue 
                    else:
                        mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * sub_20e3b268[address(arg1)]] = call.data[calldata.size len 32 * sub_20e3b268[address(arg1)]]
                        if sub_20e3b268[address(arg1)] > test266151307():
                            revert with 0, 65
                        mem[(164 * sub_20e3b268[address(arg1)]) + 256] = sub_20e3b268[address(arg1)]
                        mem[64] = (197 * sub_20e3b268[address(arg1)]) + 288
                        if not sub_20e3b268[address(arg1)]:
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _3552 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_3552] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3552 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3552 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3552 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3552 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3552 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3552 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3552 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3552 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3552
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _3615 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_3615] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_3615 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3615 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3615 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3615 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_3615 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_3615 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _3615 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _3615 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _3615
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _2943 = mem[64]
                            mem[mem[64]] = 192
                            _3163 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _5855 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _5855] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _5855]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _5855) + 256
                            _7615 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + 288 len 32 * _7615] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _7615]
                            mem[_2943 + 96] = (32 * _3163) + (32 * _5855) + (32 * _7615) + 288
                            _8447 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + 320 len 32 * _8447] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _8447]
                            mem[_2943 + 128] = (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + 320
                            _9151 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + 352 len 32 * _9151] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9151]
                            mem[_2943 + 160] = (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + (32 * _9151) + 352
                            _9727 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + (32 * _9151) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + (32 * _9151) + (32 * _9727) + 384
                            u = _2943 + (32 * _3163) + (32 * _5855) + (32 * _7615) + (32 * _8447) + (32 * _9151) + 384
                            while idx < _9727:
                                mem[u] = t + -_2943 + -(32 * _3163) + -(32 * _5855) + -(32 * _7615) + -(32 * _8447) + -(32 * _9151) - 384
                                _10111 = mem[s]
                                _10144 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10144:
                                    mem[v + t + 32] = mem[_10111 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10144) > _10144:
                                    mem[t + _10144 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10144) + t + 32
                                u = u + 32
                                continue 
                        else:
                            mem[(164 * sub_20e3b268[address(arg1)]) + 288] = 96
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            idx = sub_20e3b268[address(arg1)]
                            while idx - 1:
                                mem[s + 32] = 96
                                s = s + 32
                                idx = idx - 1
                                continue 
                            mem[0] = 0
                            mem[32] = 10
                            idx = 0
                            s = 0x13da86008ba1c6922daee3e07db95305ef49ebced9f5467a0b8613fcc6b343e3
                            while idx < sub_20e3b268[address(arg1)]:
                                mem[0] = sub_cf50f9c3[address(arg1)][idx]
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                mem[(32 * idx) + 128] = stor10[stor8[address(arg1)][idx]].field_0
                                if idx >= mem[(32 * sub_20e3b268[address(arg1)]) + 128]:
                                    revert with 0, 50
                                mem[(32 * idx) + (32 * sub_20e3b268[address(arg1)]) + 160] = stor10[stor8[address(arg1)][idx]].field_256
                                if idx >= mem[(64 * sub_20e3b268[address(arg1)]) + 160]:
                                    revert with 0, 50
                                mem[(32 * idx) + (64 * sub_20e3b268[address(arg1)]) + 192] = stor10[stor8[address(arg1)][idx]].field_512
                                if idx >= mem[(98 * sub_20e3b268[address(arg1)]) + 192]:
                                    revert with 0, 50
                                mem[(32 * idx) + (98 * sub_20e3b268[address(arg1)]) + 224] = stor10[stor8[address(arg1)][idx]].field_1024
                                if idx >= mem[(131 * sub_20e3b268[address(arg1)]) + 224]:
                                    revert with 0, 50
                                mem[(32 * idx) + (131 * sub_20e3b268[address(arg1)]) + 256] = stor10[stor8[address(arg1)][idx]].field_1280
                                if stor10[stor8[address(arg1)][idx]].field_768:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    _6176 = mem[64]
                                    mem[64] = mem[64] + ceil32(uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) + 32
                                    mem[_6176] = uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6176 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6176 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6176 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6176 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6176 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6176 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6176 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6176 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6176
                                else:
                                    if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                        revert with 0, 34
                                    _6240 = mem[64]
                                    mem[64] = mem[64] + ceil32(stor10[stor8[address(arg1)][idx]].field_769) + 32
                                    mem[_6240] = stor10[stor8[address(arg1)][idx]].field_769
                                    if stor10[stor8[address(arg1)][idx]].field_768:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5 < 32:
                                            revert with 0, 34
                                        if Mask(256, -1, stor10[stor8[address(arg1)][idx]].field_768):
                                            if 31 >= uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5:
                                                mem[_6240 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6240 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6240 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6240 + (uint255(stor10[stor8[address(arg1)][idx]].field_768) * 0.5) > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    else:
                                        if stor10[stor8[address(arg1)][idx]].field_768 == stor10[stor8[address(arg1)][idx]].field_769 < 32:
                                            revert with 0, 34
                                        if stor10[stor8[address(arg1)][idx]].field_769:
                                            if 31 >= stor10[stor8[address(arg1)][idx]].field_769:
                                                mem[_6240 + 32] = 256 * stor10[stor8[address(arg1)][idx]].field_776
                                            else:
                                                mem[0] = sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3
                                                mem[_6240 + 32] = stor10[stor8[address(arg1)][idx]][3].field_0
                                                s = _6240 + 32
                                                t = sha3(sha3(sub_cf50f9c3[address(arg1)][idx], 10) + 3)
                                                while _6240 + stor10[stor8[address(arg1)][idx]].field_769 > s:
                                                    mem[s + 32] = uint256(stor1[t])
                                                    s = s + 32
                                                    t = t + 1
                                                    continue 
                                    if idx >= mem[(164 * sub_20e3b268[address(arg1)]) + 256]:
                                        revert with 0, 50
                                    mem[(32 * idx) + (164 * sub_20e3b268[address(arg1)]) + 288] = _6240
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = sha3(sub_cf50f9c3[address(arg1)][idx], 10)
                                continue 
                            _5791 = mem[64]
                            mem[mem[64]] = 192
                            _5919 = mem[96]
                            mem[mem[64] + 192] = mem[96]
                            mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                            mem[mem[64] + 32] = (32 * mem[96]) + 224
                            _7616 = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 224] = mem[(32 * sub_20e3b268[address(arg1)]) + 128]
                            mem[mem[64] + (32 * mem[96]) + 256 len 32 * _7616] = mem[(32 * sub_20e3b268[address(arg1)]) + 160 len 32 * _7616]
                            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _7616) + 256
                            _8448 = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + 256] = mem[(64 * sub_20e3b268[address(arg1)]) + 160]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + 288 len 32 * _8448] = mem[(64 * sub_20e3b268[address(arg1)]) + 192 len 32 * _8448]
                            mem[_5791 + 96] = (32 * _5919) + (32 * _7616) + (32 * _8448) + 288
                            _9152 = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + 288] = mem[(98 * sub_20e3b268[address(arg1)]) + 192]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + 320 len 32 * _9152] = mem[(98 * sub_20e3b268[address(arg1)]) + 224 len 32 * _9152]
                            mem[_5791 + 128] = (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + 320
                            _9728 = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + 320] = mem[(131 * sub_20e3b268[address(arg1)]) + 224]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + 352 len 32 * _9728] = mem[(131 * sub_20e3b268[address(arg1)]) + 256 len 32 * _9728]
                            mem[_5791 + 160] = (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + (32 * _9728) + 352
                            _10208 = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            mem[_5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + (32 * _9728) + 352] = mem[(164 * sub_20e3b268[address(arg1)]) + 256]
                            idx = 0
                            s = (164 * sub_20e3b268[address(arg1)]) + 288
                            t = _5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + (32 * _9728) + (32 * _10208) + 384
                            u = _5791 + (32 * _5919) + (32 * _7616) + (32 * _8448) + (32 * _9152) + (32 * _9728) + 384
                            while idx < _10208:
                                mem[u] = t + -_5791 + -(32 * _5919) + -(32 * _7616) + -(32 * _8448) + -(32 * _9152) + -(32 * _9728) - 384
                                _10432 = mem[s]
                                _10464 = mem[mem[s]]
                                mem[t] = mem[mem[s]]
                                v = 0
                                while v < _10464:
                                    mem[v + t + 32] = mem[_10432 + v + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_10464) > _10464:
                                    mem[t + _10464 + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = ceil32(_10464) + t + 32
                                u = u + 32
                                continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
