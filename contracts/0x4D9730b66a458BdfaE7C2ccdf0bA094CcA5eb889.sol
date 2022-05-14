contract main {




// =====================  Runtime code  =====================


#
#  - sub_167845ac(?)
#
array of struct stor0;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor5;
mapping of struct stor6;
address owner;
mapping of struct stor8;
mapping of struct receipt;
mapping of struct stor10;
array of struct sub_4c878eba;
address stor12;
address vendorAddress;
uint256 stor15;

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_4c878eba(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_4c878eba[arg1].field_0
    return sub_4c878eba[arg1][arg2].field_0, 
           sub_4c878eba[arg1][arg2].field_256,
           sub_4c878eba[arg1][arg2].field_512,
           sub_4c878eba[arg1][arg2].field_768,
           sub_4c878eba[arg1][arg2].field_1024,
           sub_4c878eba[arg1][arg2].field_1280
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

function getVendor() {
    return vendorAddress
}

function owner() {
    return owner
}

function fetchReceipt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return receipt[arg1].field_0, 
           receipt[arg1].field_256,
           receipt[arg1].field_512,
           receipt[arg1].field_768,
           receipt[arg1].field_1024,
           receipt[arg1].field_1280
}

function getReceipt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return receipt[arg1].field_0, 
           receipt[arg1].field_256,
           receipt[arg1].field_512,
           receipt[arg1].field_768,
           receipt[arg1].field_1024,
           receipt[arg1].field_1280
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

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_8ab43c8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call vendorAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Unable to pay vendor'
    emit 0x7abe2945: vendorAddress, arg1
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

function sub_b8cc3a28(?) {
    require ext_code.size(stor12)
    staticcall stor12.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[32]
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
    if ceil32(arg4.length) + 128 > test266151307() or ceil32(arg4.length) + 128 < 96:
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
    if ext_code.size(arg2) <= 0:
    require ext_code.size(arg2)
    call arg2 with:
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
    require not 0, ext_call.return_data[4 len 28]
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

function sub_e86eac72(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_0:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        else:
            if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor10[arg1].field_1:
                if 31 < stor10[arg1].field_1:
                    mem[128] = stor10[arg1].field_0
                    idx = 128
                    s = 0
                    while stor10[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor10[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)])
                mem[128] = 256 * stor10[arg1].field_8
        mem[ceil32(stor10[arg1].field_1) + 192 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
        if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
            mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10[arg1].field_1), data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 192 len 2 * ceil32(stor10[arg1].field_1)]), 
    if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor10[arg1].field_0:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    else:
        if stor10[arg1].field_0 == stor10[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor10[arg1].field_1:
            if 31 < stor10[arg1].field_1:
                mem[128] = stor10[arg1].field_0
                idx = 128
                s = 0
                while stor10[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor10[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)])
            mem[128] = 256 * stor10[arg1].field_8
    mem[ceil32(stor10[arg1].field_1) + 192 len ceil32(stor10[arg1].field_1)] = mem[128 len ceil32(stor10[arg1].field_1)]
    if ceil32(stor10[arg1].field_1) > stor10[arg1].field_1:
        mem[ceil32(stor10[arg1].field_1) + stor10[arg1].field_1 + 192] = 0
    return Array(len=stor10[arg1].field_0, data=mem[128 len ceil32(stor10[arg1].field_1)], mem[(2 * ceil32(stor10[arg1].field_1)) + 192 len 2 * ceil32(stor10[arg1].field_1)]), 
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721URIStorage: URI query for nonexistent token'
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor6[arg1].field_0:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        else:
            if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)])
                mem[128] = 256 * stor6[arg1].field_8
        mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
        if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
            mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
        return Array(len=2 * Mask(256, -1, stor6[arg1].field_1), data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
    if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor6[arg1].field_0:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if stor6[arg1].field_0 == stor6[arg1].field_1 < 32:
            revert with 'NH{q', 34
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
    mem[ceil32(stor6[arg1].field_1) + 224 len ceil32(stor6[arg1].field_1)] = mem[128 len ceil32(stor6[arg1].field_1)]
    if ceil32(stor6[arg1].field_1) > stor6[arg1].field_1:
        mem[ceil32(stor6[arg1].field_1) + stor6[arg1].field_1 + 224] = 0
    return Array(len=stor6[arg1].field_0, data=mem[128 len ceil32(stor6[arg1].field_1)], mem[(2 * ceil32(stor6[arg1].field_1)) + 224 len 2 * ceil32(stor6[arg1].field_1)]), 
}

function sub_5d0deb88(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + ceil32(arg4.length) + 160 > test266151307() or ceil32(arg4.length) + 160 < 128:
        revert with 'NH{q', 65
    mem[ceil32(arg1.length) + 128] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8[arg3].field_768:
        revert with 0, 'Product already published'
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = stor15
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = arg2
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = arg3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = msg.sender
    stor8[arg3].field_0 = stor15
    if stor8[arg3].field_256:
        if stor8[arg3].field_256 == stor8[arg3].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[arg3][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[arg3].field_256 = 0
            idx = 0
            while stor8[arg3].field_257 + 31 / 32 > idx:
                stor8[arg3][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[arg3].field_256 == stor8[arg3].field_257 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor8[arg3][1][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor8[arg3].field_256 = 0
            idx = 0
            while stor8[arg3].field_257 + 31 / 32 > idx:
                stor8[arg3][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    stor8[arg3].field_512 = arg2
    stor8[arg3].field_768 = arg3
    if stor8[arg3].field_1024:
        if stor8[arg3].field_1024 == stor8[arg3].field_1025 < 32:
            revert with 'NH{q', 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor8[arg3][4][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor8[arg3].field_1024 = 0
            idx = 0
            while stor8[arg3].field_1025 + 31 / 32 > idx:
                stor8[arg3][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[arg3].field_1024 == stor8[arg3].field_1025 < 32:
            revert with 'NH{q', 34
        if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
            stor8[arg3][4][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        else:
            stor8[arg3].field_1024 = 0
            idx = 0
            while stor8[arg3].field_1025 + 31 / 32 > idx:
                stor8[arg3][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    stor8[arg3].field_1280 = msg.sender
    stor15++
    emit 0x8bfed7c0: arg3
}

function sub_d0e187e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[arg1].field_256:
        if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_256:
            if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor8[arg1].field_257:
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                if 31 >= stor8[arg1].field_257:
                    mem[128] = 256 * stor8[arg1].field_264
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if stor8[arg1].field_1024:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        return stor8[arg1].field_0, 
                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                               stor8[arg1].field_512,
                               stor8[arg1].field_768,
                               ceil32(stor8[arg1].field_257) + 224,
                               stor8[arg1].field_1280
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    mem[128] = stor8[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if stor8[arg1].field_1024:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                        return stor8[arg1].field_0, 
                                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                               stor8[arg1].field_512,
                                               stor8[arg1].field_768,
                                               ceil32(stor8[arg1].field_257) + 224,
                                               stor8[arg1].field_1280
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                        return stor8[arg1].field_0, 
                                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                               stor8[arg1].field_512,
                                               stor8[arg1].field_768,
                                               ceil32(stor8[arg1].field_257) + 224,
                                               stor8[arg1].field_1280
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        return stor8[arg1].field_0, 
                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                               stor8[arg1].field_512,
                               stor8[arg1].field_768,
                               ceil32(stor8[arg1].field_257) + 224,
                               stor8[arg1].field_1280
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
        else:
            if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
                revert with 'NH{q', 34
            if not stor8[arg1].field_257:
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                if 31 >= stor8[arg1].field_257:
                    mem[128] = 256 * stor8[arg1].field_264
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if stor8[arg1].field_1024:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        return stor8[arg1].field_0, 
                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                               stor8[arg1].field_512,
                               stor8[arg1].field_768,
                               ceil32(stor8[arg1].field_257) + 224,
                               stor8[arg1].field_1280
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    mem[128] = stor8[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_257 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if stor8[arg1].field_1024:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                        return stor8[arg1].field_0, 
                                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                               stor8[arg1].field_512,
                                               stor8[arg1].field_768,
                                               ceil32(stor8[arg1].field_257) + 224,
                                               stor8[arg1].field_1280
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                                revert with 'NH{q', 34
                            if not stor8[arg1].field_1025:
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                if 31 >= stor8[arg1].field_1025:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                                else:
                                    mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                    idx = ceil32(stor8[arg1].field_257) + 160
                                    s = 0
                                    while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                        mem[idx + 32] = stor8[arg1][s + 4].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                        return stor8[arg1].field_0, 
                                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                               stor8[arg1].field_512,
                                               stor8[arg1].field_768,
                                               ceil32(stor8[arg1].field_257) + 224,
                                               stor8[arg1].field_1280
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        return stor8[arg1].field_0, 
                               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                               stor8[arg1].field_512,
                               stor8[arg1].field_768,
                               ceil32(stor8[arg1].field_257) + 224,
                               stor8[arg1].field_1280
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
        return stor8[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor8[arg1].field_257), data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1024, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
               stor8[arg1].field_512,
               stor8[arg1].field_768,
               ceil32(stor8[arg1].field_257) + 224,
               stor8[arg1].field_1280
    if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
        revert with 'NH{q', 34
    if stor8[arg1].field_256:
        if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor8[arg1].field_257:
            if stor8[arg1].field_1024:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                return stor8[arg1].field_0, 
                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                       stor8[arg1].field_512,
                       stor8[arg1].field_768,
                       ceil32(stor8[arg1].field_257) + 224,
                       stor8[arg1].field_1280
            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1024:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if not stor8[arg1].field_1025:
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if 31 >= stor8[arg1].field_1025:
                        mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                    else:
                        mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                        idx = ceil32(stor8[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if not stor8[arg1].field_1025:
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if 31 >= stor8[arg1].field_1025:
                        mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                    else:
                        mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                        idx = ceil32(stor8[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
        else:
            if 31 >= stor8[arg1].field_257:
                mem[128] = 256 * stor8[arg1].field_264
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                mem[128] = stor8[arg1][1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                return stor8[arg1].field_0, 
                                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                       stor8[arg1].field_512,
                                       stor8[arg1].field_768,
                                       ceil32(stor8[arg1].field_257) + 224,
                                       stor8[arg1].field_1280
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                return stor8[arg1].field_0, 
                                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                       stor8[arg1].field_512,
                                       stor8[arg1].field_768,
                                       ceil32(stor8[arg1].field_257) + 224,
                                       stor8[arg1].field_1280
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
    else:
        if stor8[arg1].field_256 == stor8[arg1].field_257 < 32:
            revert with 'NH{q', 34
        if not stor8[arg1].field_257:
            if stor8[arg1].field_1024:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                return stor8[arg1].field_0, 
                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                       stor8[arg1].field_512,
                       stor8[arg1].field_768,
                       ceil32(stor8[arg1].field_257) + 224,
                       stor8[arg1].field_1280
            if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1024:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if not stor8[arg1].field_1025:
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if 31 >= stor8[arg1].field_1025:
                        mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                    else:
                        mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                        idx = ceil32(stor8[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if not stor8[arg1].field_1025:
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if 31 >= stor8[arg1].field_1025:
                        mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                    else:
                        mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                        idx = ceil32(stor8[arg1].field_257) + 160
                        s = 0
                        while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 4].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                        mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
        else:
            if 31 >= stor8[arg1].field_257:
                mem[128] = 256 * stor8[arg1].field_264
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                            if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                        if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                            mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
            else:
                mem[128] = stor8[arg1][1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_257 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if stor8[arg1].field_1024:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                            revert with 'NH{q', 34
                        if not stor8[arg1].field_1025:
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            if 31 >= stor8[arg1].field_1025:
                                mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                                if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                    mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                            else:
                                mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                                idx = ceil32(stor8[arg1].field_257) + 160
                                s = 0
                                while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                    mem[idx + 32] = stor8[arg1][s + 4].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                    return stor8[arg1].field_0, 
                                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                           stor8[arg1].field_512,
                                           stor8[arg1].field_768,
                                           ceil32(stor8[arg1].field_257) + 224,
                                           stor8[arg1].field_1280
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                    if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                        mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
                    return stor8[arg1].field_0, 
                           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], 2 * Mask(256, -1, stor8[arg1].field_1025), mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                           stor8[arg1].field_512,
                           stor8[arg1].field_768,
                           ceil32(stor8[arg1].field_257) + 224,
                           stor8[arg1].field_1280
                if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor8[arg1].field_1024:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                return stor8[arg1].field_0, 
                                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                       stor8[arg1].field_512,
                                       stor8[arg1].field_768,
                                       ceil32(stor8[arg1].field_257) + 224,
                                       stor8[arg1].field_1280
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                else:
                    if stor8[arg1].field_1024 == stor8[arg1].field_1025 < 32:
                        revert with 'NH{q', 34
                    if not stor8[arg1].field_1025:
                        if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                    else:
                        if 31 >= stor8[arg1].field_1025:
                            mem[ceil32(stor8[arg1].field_257) + 160] = 256 * stor8[arg1].field_1032
                            if ceil32(stor8[arg1].field_257) > stor8[arg1].field_257:
                                mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                        else:
                            mem[ceil32(stor8[arg1].field_257) + 160] = stor8[arg1][4].field_0
                            idx = ceil32(stor8[arg1].field_257) + 160
                            s = 0
                            while ceil32(stor8[arg1].field_257) + stor8[arg1].field_1025 + 128 > idx:
                                mem[idx + 32] = stor8[arg1][s + 4].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(stor8[arg1].field_257) <= stor8[arg1].field_257:
                                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                                return stor8[arg1].field_0, 
                                       Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1025, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
                                       stor8[arg1].field_512,
                                       stor8[arg1].field_768,
                                       ceil32(stor8[arg1].field_257) + 224,
                                       stor8[arg1].field_1280
                            mem[ceil32(stor8[arg1].field_257) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_257 + 384] = 0
                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 384] = stor8[arg1].field_1025
                mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + 416 len ceil32(stor8[arg1].field_1025)] = mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]
                if ceil32(stor8[arg1].field_1025) > stor8[arg1].field_1025:
                    mem[(2 * ceil32(stor8[arg1].field_257)) + ceil32(stor8[arg1].field_1025) + stor8[arg1].field_1025 + 416] = 0
    return stor8[arg1].field_0, 
           Array(len=stor8[arg1].field_256, data=mem[128 len ceil32(stor8[arg1].field_257)], stor8[arg1].field_1024, mem[ceil32(stor8[arg1].field_257) + 160 len ceil32(stor8[arg1].field_1025)]),
           stor8[arg1].field_512,
           stor8[arg1].field_768,
           ceil32(stor8[arg1].field_257) + 224,
           stor8[arg1].field_1280
}



}
