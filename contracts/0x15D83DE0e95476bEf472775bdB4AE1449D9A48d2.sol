contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
uint256 stor151;
mapping of struct royalty;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function getRoyalty(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721Metadata: Royalty query for nonexistent token'
    return royalty[arg1].field_1024
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

function getCreator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721Metadata: Creator query for nonexistent token'
    return royalty[arg1].field_256
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
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
    if arg1 == ownerOf[arg2]:
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        revert with 0, 'Initializable: contract is not initializing'
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'CryptoR' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor101.length) = 0
        stor101.length.field_1 = 7
        stor101.length.field_8 = 'CryptoR' / 256
        idx = 0
        while stor101.length.field_1 + 31 / 32 > idx:
            stor101[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_8 = 'CNR' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor102.length) = 0
        stor102.length.field_1 = 3
        stor102.length.field_8 = 'CNR' / 256
        idx = 0
        while stor102.length.field_1 + 31 / 32 > idx:
            stor102[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
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

function sub_94e1208a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint8(arg2)
    if uint8(arg2) <= 0:
        revert with 0, 'Royalty cannot be zero or smaller than zero'
    stor151++
    if not msg.sender:
        revert with 0, 'ERC721: mint to the zero address'
    if ownerOf[stor151]:
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(msg.sender)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)]++
    ownerOf[stor151] = msg.sender
    emit Transfer(0, msg.sender, stor151);
    if ext_code.size(msg.sender) > 0:
        require ext_code.size(msg.sender)
        call msg.sender.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, 0, stor151, 128, 0
        if not ext_call.success:
            if not return_data.size:
                if not arg1.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg1[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
    royalty[stor151].field_0 = stor151
    royalty[stor151].field_256 = msg.sender
    royalty[stor151].field_512 = this.address
    if royalty[stor151].field_768:
        if royalty[stor151].field_768 == royalty[stor151].field_769 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            royalty[stor151][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            royalty[stor151].field_768 = 0
            idx = 0
            while royalty[stor151].field_769 + 31 / 32 > idx:
                royalty[stor151][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if royalty[stor151].field_768 == royalty[stor151].field_769 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            royalty[stor151][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            royalty[stor151].field_768 = 0
            idx = 0
            while royalty[stor151].field_769 + 31 / 32 > idx:
                royalty[stor151][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
    royalty[stor151].field_1024 = uint8(arg2)
    return stor151
}

function sub_1e5521b7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if royalty[arg1].field_768:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_768:
            if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if royalty[arg1].field_769:
                if 31 >= royalty[arg1].field_769:
                    mem[128] = 256 * royalty[arg1].field_776
                else:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if royalty[arg1].field_769:
                if 31 >= royalty[arg1].field_769:
                    mem[128] = 256 * royalty[arg1].field_776
                else:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return royalty[arg1].field_0, 
               royalty[arg1].field_256,
               royalty[arg1].field_512,
               Array(len=2 * Mask(256, -1, royalty[arg1].field_769), data=mem[128 len ceil32(royalty[arg1].field_769)]),
               royalty[arg1].field_1024
    if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if royalty[arg1].field_768:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_769:
            if 31 >= royalty[arg1].field_769:
                mem[128] = 256 * royalty[arg1].field_776
            else:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_769:
            if 31 >= royalty[arg1].field_769:
                mem[128] = 256 * royalty[arg1].field_776
            else:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return royalty[arg1].field_0, 
           royalty[arg1].field_256,
           royalty[arg1].field_512,
           Array(len=royalty[arg1].field_768, data=mem[128 len ceil32(royalty[arg1].field_769)]),
           royalty[arg1].field_1024
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        else:
            if bool(stor101.length) == stor101.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)])
                mem[128] = 256 * stor101.length.field_8
        mem[ceil32(stor101.length.field_1) + 192 len ceil32(stor101.length.field_1)] = mem[128 len ceil32(stor101.length.field_1)]
        if ceil32(stor101.length.field_1) > stor101.length.field_1:
            mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length.field_1), data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
    if bool(stor101.length) == stor101.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor101.length) == stor101.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor101.length.field_1) + stor101.length.field_1 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1)], mem[(2 * ceil32(stor101.length.field_1)) + 192 len 2 * ceil32(stor101.length.field_1)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        else:
            if bool(stor102.length) == stor102.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)])
                mem[128] = 256 * stor102.length.field_8
        mem[ceil32(stor102.length.field_1) + 192 len ceil32(stor102.length.field_1)] = mem[128 len ceil32(stor102.length.field_1)]
        if ceil32(stor102.length.field_1) > stor102.length.field_1:
            mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length.field_1), data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
    if bool(stor102.length) == stor102.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor102.length) == stor102.length.field_1 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor102.length.field_1) + stor102.length.field_1 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1)], mem[(2 * ceil32(stor102.length.field_1)) + 192 len 2 * ceil32(stor102.length.field_1)]), 
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721Metadata: URI query for nonexistent token'
    if royalty[arg1].field_768:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_768:
            if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if royalty[arg1].field_769:
                if 31 < royalty[arg1].field_769:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, royalty[arg1].field_769), data=mem[128 len ceil32(royalty[arg1].field_769)])
                mem[128] = 256 * royalty[arg1].field_776
        else:
            if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
                revert with 'NH{q', 34
            if royalty[arg1].field_769:
                if 31 < royalty[arg1].field_769:
                    mem[128] = royalty[arg1][3].field_0
                    idx = 128
                    s = 0
                    while royalty[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = royalty[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, royalty[arg1].field_769), data=mem[128 len ceil32(royalty[arg1].field_769)])
                mem[128] = 256 * royalty[arg1].field_776
        mem[ceil32(royalty[arg1].field_769) + 192 len ceil32(royalty[arg1].field_769)] = mem[128 len ceil32(royalty[arg1].field_769)]
        if ceil32(royalty[arg1].field_769) > royalty[arg1].field_769:
            mem[ceil32(royalty[arg1].field_769) + royalty[arg1].field_769 + 192] = 0
        return Array(len=2 * Mask(256, -1, royalty[arg1].field_769), data=mem[128 len ceil32(royalty[arg1].field_769)], mem[(2 * ceil32(royalty[arg1].field_769)) + 192 len 2 * ceil32(royalty[arg1].field_769)]), 
    if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
        revert with 'NH{q', 34
    if royalty[arg1].field_768:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_769:
            if 31 < royalty[arg1].field_769:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=royalty[arg1].field_768, data=mem[128 len ceil32(royalty[arg1].field_769)])
            mem[128] = 256 * royalty[arg1].field_776
    else:
        if royalty[arg1].field_768 == royalty[arg1].field_769 < 32:
            revert with 'NH{q', 34
        if royalty[arg1].field_769:
            if 31 < royalty[arg1].field_769:
                mem[128] = royalty[arg1][3].field_0
                idx = 128
                s = 0
                while royalty[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = royalty[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=royalty[arg1].field_768, data=mem[128 len ceil32(royalty[arg1].field_769)])
            mem[128] = 256 * royalty[arg1].field_776
    mem[ceil32(royalty[arg1].field_769) + 192 len ceil32(royalty[arg1].field_769)] = mem[128 len ceil32(royalty[arg1].field_769)]
    if ceil32(royalty[arg1].field_769) > royalty[arg1].field_769:
        mem[ceil32(royalty[arg1].field_769) + royalty[arg1].field_769 + 192] = 0
    return Array(len=royalty[arg1].field_768, data=mem[128 len ceil32(royalty[arg1].field_769)], mem[(2 * ceil32(royalty[arg1].field_769)) + 192 len 2 * ceil32(royalty[arg1].field_769)]), 
}



}
