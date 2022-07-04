contract main {




// =====================  Runtime code  =====================


#
#  - sub_287ddddd(?)
#  - sub_335ce7a9(?)
#  - sub_48c49ed0(?)
#  - sub_d04267c3(?)
#  - sub_dc95b5c1(?)
#
address owner;
array of struct stor1;
array of struct stor2;
mapping of address ownerOf;
array of uint256 balanceOf;
mapping of address approved;
array of uint8 stor6;
mapping of struct stor7;
uint256 currentTokenId;
uint256 sub_b49bb8f3;
uint256 sub_222d9d4a;
uint256 sub_eb77db08;
uint256 sub_fb0ecf68;
uint256 sub_f5597032;
uint256 sub_7e953ee7;
uint256 sub_6f8f1ceb;
uint256 sub_0ae55ae5;
uint256 sub_146daff4;
uint256 sub_e5d76232;
uint256 sub_19a41ea9;
uint256 sub_1ec4a4a8;
address stor21;
mapping of uint8 stor22;
mapping of struct sub_ded2abc3;
mapping of struct stor24;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return address(approved[arg1])
}

function sub_0ae55ae5(?) payable {
    return sub_0ae55ae5
}

function sub_146daff4(?) payable {
    return sub_146daff4
}

function sub_19a41ea9(?) payable {
    return sub_19a41ea9
}

function sub_1ec4a4a8(?) payable {
    return sub_1ec4a4a8
}

function sub_222d9d4a(?) payable {
    return sub_222d9d4a
}

function WhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[arg1])
}

function getCurrentTokenId() payable {
    return currentTokenId
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(ownerOf[arg1])
}

function sub_6f8f1ceb(?) payable {
    return sub_6f8f1ceb
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_7e953ee7(?) payable {
    return sub_7e953ee7
}

function owner() payable {
    return owner
}

function sub_b49bb8f3(?) payable {
    return sub_b49bb8f3
}

function sub_ded2abc3(?) payable {
    require calldata.size - 4 >= 32
    return uint256(sub_ded2abc3[arg1].field_0)
}

function sub_e5d76232(?) payable {
    return sub_e5d76232
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(stor6[address(arg1)][address(arg2)]))
}

function sub_eb77db08(?) payable {
    return sub_eb77db08
}

function sub_f5597032(?) payable {
    return sub_f5597032
}

function sub_fb0ecf68(?) payable {
    return sub_fb0ecf68
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHelper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21 = arg1
}

function setTier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b49bb8f3 = arg1
    sub_222d9d4a = arg2
}

function sub_49a67f1e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1:
        revert with 0, 33
    if arg1:
        sub_fb0ecf68 = arg2
    else:
        sub_eb77db08 = arg2
}

function sub_37dc0aba(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    require uint8(stor24[arg1].field_1800) == 5
    uint256(sub_ded2abc3[arg1].field_0) = arg2
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    uint8(stor6[address(msg.sender)][address(arg1)]) = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_61c873f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5:
        revert with 0, 33
    if arg1 == 4:
        sub_7e953ee7 = arg2
    else:
        if arg1 > 5:
            revert with 0, 33
        if arg1 != 5:
            sub_f5597032 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg1 == address(ownerOf[arg2]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if address(ownerOf[arg2]) != msg.sender:
        if not uint8(stor6[address(stor3[arg2])][address(msg.sender)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    address(approved[arg2]) = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function sub_d5abc335(?) payable {
    mem[128 len 192] = call.data[calldata.size len 192]
    idx = 1
    while idx <= currentTokenId:
        mem[0] = idx
        mem[32] = 24
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[idx].field_1800) >= 6:
            revert with 0, 50
        if mem[(32 * uint8(stor24[idx].field_1800)) + 128] == -1:
            revert with 0, 17
        mem[(32 * uint8(stor24[idx].field_1800)) + 128] = mem[(32 * uint8(stor24[idx].field_1800)) + 128] + 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=6, data=mem[128 len 192])
}

function setWhitelist(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 22
        stor22[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getTokens() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(msg.sender)]:
        return ''
    if balanceOf[address(msg.sender)] > test266151307():
        revert with 0, 65
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 1
    s = 0
    while idx <= currentTokenId:
        mem[0] = idx
        mem[32] = 3
        if address(ownerOf[idx]) != msg.sender:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s >= balanceOf[address(msg.sender)]:
            revert with 0, 50
        mem[(32 * s) + 128] = idx
        if s == -1:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len 32 * balanceOf[address(msg.sender)]])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor6[address(stor3[arg3])][address(msg.sender)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if address(ownerOf[arg3]) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    address(approved[arg3]) = 0
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
    emit Transfer(arg1, arg2, arg3);
}

function updateName(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if not address(ownerOf[arg1]):
        revert with 0, 'Not exist'
    if address(ownerOf[arg1]) != msg.sender:
        revert with 0, 'Not owner'
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor24[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor24[arg1].field_0) = 0
            idx = 0
            while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor24[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            uint256(stor24[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
        else:
            uint256(stor24[arg1].field_0) = 0
            idx = 0
            while stor24[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor24[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    emit UpdateName(arg1, Array(len=arg2.length, data=arg2[all]));
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor6[address(stor3[arg3])][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    address(approved[arg3]) = 0
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function sub_67001c52(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] < 6
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] < 2
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[4] + 36)] > 5:
            revert with 0, 33
        if cd[((32 * idx) + cd[4] + 36)] == 4:
            if cd[((32 * idx) + cd[36] + 36)] > 1:
                revert with 0, 33
            if cd[((32 * idx) + cd[36] + 36)]:
                sub_1ec4a4a8 = cd[((32 * idx) + cd[68] + 36)]
            else:
                sub_19a41ea9 = cd[((32 * idx) + cd[68] + 36)]
        else:
            if cd[((32 * idx) + cd[4] + 36)] > 5:
                revert with 0, 33
            if cd[((32 * idx) + cd[36] + 36)] > 1:
                revert with 0, 33
            if cd[((32 * idx) + cd[4] + 36)] != 5:
                if cd[((32 * idx) + cd[36] + 36)]:
                    sub_0ae55ae5 = cd[((32 * idx) + cd[68] + 36)]
                else:
                    sub_6f8f1ceb = cd[((32 * idx) + cd[68] + 36)]
            else:
                if cd[((32 * idx) + cd[36] + 36)]:
                    sub_e5d76232 = cd[((32 * idx) + cd[68] + 36)]
                else:
                    sub_146daff4 = cd[((32 * idx) + cd[68] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
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
    if not address(ownerOf[arg3]):
        revert with 0, 'ERC721: operator query for nonexistent token'
    if address(ownerOf[arg3]) != msg.sender:
        if not address(ownerOf[arg3]):
            revert with 0, 'ERC721: approved query for nonexistent token'
        if address(approved[arg3]) != msg.sender:
            if not uint8(stor6[address(stor3[arg3])][address(msg.sender)]):
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    address(approved[arg3]) = 0
    emit Approval(address(ownerOf[arg3]), 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    address(ownerOf[arg3]) = arg2
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

function sub_4735e2a6(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if not address(ownerOf[arg1]):
        revert with 0, 'Not exist'
    if address(ownerOf[arg1]) != address(arg2):
        revert with 0, 'Not owner'
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor24[arg1].field_0)):
            if 31 < uint255(uint256(stor24[arg1].field_0)) * 0.5:
                idx = 416
                s = 0
                while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor24[arg1].field_1 % 128:
            if 31 < stor24[arg1].field_1 % 128:
                idx = 416
                s = 0
                while stor24[arg1].field_1 % 128 + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if uint8(stor24[arg1].field_1792) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) != 5:
        revert with 0, 'Not orb'
    require ext_code.size(stor21)
    staticcall stor21.0x7cddee37 with:
            gas gas_remaining wei
           args uint256(stor24[arg1].field_1536)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(stor24[arg1].field_512) and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512):
        revert with 0, 17
    if uint256(stor24[arg1].field_512) < uint256(stor24[arg1].field_512) * ext_call.return_data[0] / 100:
        revert with 0, 17
    return uint256(stor24[arg1].field_512) * ext_call.return_data[0] / 100, 
           uint256(stor24[arg1].field_512) - (uint256(stor24[arg1].field_512) * ext_call.return_data[0] / 100)
}

function name() payable {
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

function sub_37c14e70(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if not address(ownerOf[arg1]):
        revert with 0, 'Not exist'
    if address(ownerOf[arg1]) != address(arg2):
        revert with 0, 'Not owner'
    address(approved[arg1]) = 0
    emit Approval(address(ownerOf[arg1]), 0, arg1);
    if balanceOf[address(stor3[arg1])] < 1:
        revert with 0, 17
    balanceOf[address(stor3[arg1])]--
    address(ownerOf[arg1]) = 0
    emit Transfer(address(ownerOf[arg1]), 0, arg1);
    if bool(stor7[arg1].field_0):
        if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor7[arg1].field_0)):
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor7[arg1].field_0) = 0
                if 31 < uint255(uint256(stor7[arg1].field_0)) * 0.5:
                    idx = 0
                    while (uint255(uint256(stor7[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                        uint256(stor7[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor7[arg1].field_0) = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor7[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_1 % 128:
            if bool(stor7[arg1].field_0):
                if bool(stor7[arg1].field_0) == uint255(uint256(stor7[arg1].field_0)) * 0.5 < 32:
                    revert with 0, 34
                uint256(stor7[arg1].field_0) = 0
                if 31 < uint255(uint256(stor7[arg1].field_0)) * 0.5:
                    idx = 0
                    while (uint255(uint256(stor7[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                        uint256(stor7[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor7[arg1].field_0) == stor7[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                uint256(stor7[arg1].field_0) = 0
                if 31 < stor7[arg1].field_1 % 128:
                    idx = 0
                    while stor7[arg1].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor7[arg1][idx].field_0) = 0
                        idx = idx + 1
                        continue 
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        uint256(stor24[arg1].field_0) = 0
        if 31 < uint255(uint256(stor24[arg1].field_0)) * 0.5:
            idx = 0
            while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor24[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        uint256(stor24[arg1].field_0) = 0
        if 31 < stor24[arg1].field_1 % 128:
            idx = 0
            while stor24[arg1].field_1 % 128 + 31 / 32 > idx:
                uint256(stor24[arg1][idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor24[arg1].field_256) = 0
    uint256(stor24[arg1].field_512) = 0
    uint256(stor24[arg1].field_768) = 0
    uint256(stor24[arg1].field_1024) = 0
    uint256(stor24[arg1].field_1280) = 0
    uint256(stor24[arg1].field_1536) = 0
    uint16(stor24[arg1].field_1792) = 0
    uint256(sub_ded2abc3[arg1].field_0) = 0
}

function symbol() payable {
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

function getMeta(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(ownerOf[arg1]) != msg.sender:
            if stor21 != msg.sender:
                revert with 0, 'Not allowed'
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor24[arg1].field_0):
            if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor24[arg1].field_0)):
                if 31 >= uint255(uint256(stor24[arg1].field_0)) * 0.5:
                    mem[704] = 256 * Mask(248, 0, stor24[arg1].field_8)
                else:
                    mem[704] = uint256(stor24[arg1].field_0)
                    idx = 704
                    s = 0
                    while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 672 > idx:
                        mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor24[arg1].field_1 % 128:
                if 31 >= stor24[arg1].field_1 % 128:
                    mem[704] = 256 * Mask(248, 0, stor24[arg1].field_8)
                else:
                    mem[704] = uint256(stor24[arg1].field_0)
                    idx = 704
                    s = 0
                    while stor24[arg1].field_1 % 128 + 672 > idx:
                        mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
        if uint8(stor24[arg1].field_1792) > 5:
            revert with 0, 33
        if uint8(stor24[arg1].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[arg1].field_1792) >= 6:
            revert with 0, 33
        if uint8(stor24[arg1].field_1800) >= 6:
            revert with 0, 33
        return 32, 288, 
               uint256(stor24[arg1].field_256),
               uint256(stor24[arg1].field_512),
               uint256(stor24[arg1].field_768),
               uint256(stor24[arg1].field_1024),
               uint256(stor24[arg1].field_1280),
               uint256(stor24[arg1].field_1536),
               uint8(stor24[arg1].field_1792),
               uint8(stor24[arg1].field_1800),
               2 * Mask(256, -1, uint256(stor24[arg1].field_0)),
               mem[704 len ceil32(uint255(uint256(stor24[arg1].field_0)) * 0.5)]
    if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor24[arg1].field_0)):
            if 31 >= uint255(uint256(stor24[arg1].field_0)) * 0.5:
                mem[704] = 256 * Mask(248, 0, stor24[arg1].field_8)
            else:
                mem[704] = uint256(stor24[arg1].field_0)
                idx = 704
                s = 0
                while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 672 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor24[arg1].field_1 % 128:
            if 31 >= stor24[arg1].field_1 % 128:
                mem[704] = 256 * Mask(248, 0, stor24[arg1].field_8)
            else:
                mem[704] = uint256(stor24[arg1].field_0)
                idx = 704
                s = 0
                while stor24[arg1].field_1 % 128 + 672 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if uint8(stor24[arg1].field_1792) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1792) >= 6:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) >= 6:
        revert with 0, 33
    return 32, 288, 
           uint256(stor24[arg1].field_256),
           uint256(stor24[arg1].field_512),
           uint256(stor24[arg1].field_768),
           uint256(stor24[arg1].field_1024),
           uint256(stor24[arg1].field_1280),
           uint256(stor24[arg1].field_1536),
           uint8(stor24[arg1].field_1792),
           uint8(stor24[arg1].field_1800),
           stor24[arg1].field_0 % 128,
           mem[704 len ceil32(stor24[arg1].field_1 % 128)]
}

function claim(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 24
        _37 = mem[64]
        mem[64] = mem[64] + 288
        if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0):
            if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5 < 32:
                revert with 0, 34
            _38 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5) + 32
            mem[_38] = uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5
            if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0):
                if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)):
                    if 31 >= uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5:
                        mem[_38 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + arg1 + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 24)
                        mem[_38 + 32] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)
                        s = _38 + 32
                        t = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 24))
                        while _38 + (uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5) > s:
                            mem[s + 32] = uint256(stor1[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                    if 31 >= stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                        mem[_38 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + arg1 + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 24)
                        mem[_38 + 32] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)
                        s = _38 + 32
                        t = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 24))
                        while _38 + stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
            mem[_37] = _38
        else:
            if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            _39 = mem[64]
            mem[64] = mem[64] + ceil32(stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128) + 32
            mem[_39] = stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128
            if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0):
                if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)):
                    if 31 >= uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5:
                        mem[_39 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + arg1 + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 24)
                        mem[_39 + 32] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)
                        s = _39 + 32
                        t = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 24))
                        while _39 + (uint255(uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)) * 0.5) > s:
                            mem[s + 32] = uint256(stor1[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
            else:
                if bool(stor24[cd[((32 * idx) + arg1 + 36)]].field_0) == stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                    if 31 >= stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128:
                        mem[_39 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + arg1 + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + arg1 + 36)], 24)
                        mem[_39 + 32] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_0)
                        s = _39 + 32
                        t = sha3(sha3(cd[((32 * idx) + arg1 + 36)], 24))
                        while _39 + stor24[cd[((32 * idx) + arg1 + 36)]].field_1 % 128 > s:
                            mem[s + 32] = uint256(stor1[t].field_0)
                            s = s + 32
                            t = t + 1
                            continue 
            mem[_37] = _39
        mem[_37 + 32] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_256)
        mem[_37 + 64] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_512)
        mem[_37 + 96] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_768)
        mem[_37 + 128] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_1024)
        mem[_37 + 160] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_1280)
        mem[_37 + 192] = uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_1536)
        if uint8(stor24[cd[((32 * idx) + arg1 + 36)]].field_1792) > 5:
            revert with 0, 33
        mem[_37 + 224] = uint8(stor24[cd[((32 * idx) + arg1 + 36)]].field_1792)
        if uint8(stor24[cd[((32 * idx) + arg1 + 36)]].field_1800) > 5:
            revert with 0, 33
        mem[_37 + 256] = uint8(stor24[cd[((32 * idx) + arg1 + 36)]].field_1800)
        if uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_768) > !sub_eb77db08:
            revert with 0, 17
        if uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_768) + sub_eb77db08 <= block.timestamp:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 24
            uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_1024) = 0
            uint256(stor24[cd[((32 * idx) + arg1 + 36)]].field_768) = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a5a1fd29(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 288
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4).length + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + 385 < 384 or ceil32(ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + 385 > test266151307():
        revert with 0, 65
    require cd[4] + ('cd', 4).length + cd[(cd[4] + ('cd', 4).length + 4)] + 36 <= calldata.size
    require ('cd', 4)[6] < 6
    require ('cd', 4)[7] < 6
    require cd[36] == address(cd[36])
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if currentTokenId > -2:
        revert with 0, 17
    currentTokenId++
    if not address(cd[36]):
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor8]):
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(cd[36])] > -2:
        revert with 0, 17
    balanceOf[address(cd[36])]++
    address(ownerOf[stor8]) = address(cd[36])
    emit Transfer(0, address(cd[36]), currentTokenId);
    if ('cd', 4)[7] > 5:
        revert with 0, 33
    if ('cd', 4)[7] == 4:
        if ('cd', 4)[6] > 5:
            revert with 0, 33
        if bool(stor24[stor8].field_0):
            if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                revert with 0, 34
            if cd[(cd[4] + ('cd', 4).length + 4)]:
                uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
            else:
                uint256(stor24[stor8].field_0) = 0
                idx = 0
                while (uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32 > idx:
                    uint256(stor24[stor8][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                revert with 0, 34
            if cd[(cd[4] + ('cd', 4).length + 4)]:
                uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
            else:
                uint256(stor24[stor8].field_0) = 0
                idx = 0
                while stor24[stor8].field_1 % 128 + 31 / 32 > idx:
                    uint256(stor24[stor8][idx].field_0) = 0
                    idx = idx + 1
                    continue 
        uint256(stor24[stor8].field_256) = currentTokenId
        uint256(stor24[stor8].field_512) = ('cd', 4)[1]
        uint256(stor24[stor8].field_768) = ('cd', 4)[2]
        uint256(stor24[stor8].field_1024) = ('cd', 4)[3]
        uint256(stor24[stor8].field_1280) = ('cd', 4)[4]
        uint256(stor24[stor8].field_1536) = ('cd', 4)[5]
        if ('cd', 4)[6] > 5:
            revert with 0, 33
        uint256(stor24[stor8].field_1792) = ('cd', 4)[6] or Mask(248, 8, uint256(stor24[stor8].field_1792))
    else:
        if ('cd', 4)[7] > 5:
            revert with 0, 33
        if ('cd', 4)[7] == 5:
            if ('cd', 4)[6] > 5:
                revert with 0, 33
            if bool(stor24[stor8].field_0):
                if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if cd[(cd[4] + ('cd', 4).length + 4)]:
                    uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
                else:
                    uint256(stor24[stor8].field_0) = 0
                    idx = 0
                    while (uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32 > idx:
                        uint256(stor24[stor8][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                    revert with 0, 34
                if cd[(cd[4] + ('cd', 4).length + 4)]:
                    uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
                else:
                    uint256(stor24[stor8].field_0) = 0
                    idx = 0
                    while stor24[stor8].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor24[stor8][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(stor24[stor8].field_256) = currentTokenId
            uint256(stor24[stor8].field_512) = ('cd', 4)[1]
            uint256(stor24[stor8].field_768) = ('cd', 4)[2]
            uint256(stor24[stor8].field_1024) = ('cd', 4)[3]
            uint256(stor24[stor8].field_1280) = ('cd', 4)[4]
            uint256(stor24[stor8].field_1536) = ('cd', 4)[5]
            if ('cd', 4)[6] > 5:
                revert with 0, 33
            uint256(stor24[stor8].field_1792) = ('cd', 4)[6] or Mask(248, 8, uint256(stor24[stor8].field_1792))
        else:
            require ext_code.size(stor21)
            staticcall stor21.0x164af651 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 5:
                revert with 0, 33
            if bool(stor24[stor8].field_0):
                if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if cd[(cd[4] + ('cd', 4).length + 4)]:
                    uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
                else:
                    uint256(stor24[stor8].field_0) = 0
                    idx = 0
                    while (uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32 > idx:
                        uint256(stor24[stor8][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                    revert with 0, 34
                if cd[(cd[4] + ('cd', 4).length + 4)]:
                    uint256(stor24[stor8][].field_0) = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
                else:
                    uint256(stor24[stor8].field_0) = 0
                    idx = 0
                    while stor24[stor8].field_1 % 128 + 31 / 32 > idx:
                        uint256(stor24[stor8][idx].field_0) = 0
                        idx = idx + 1
                        continue 
            uint256(stor24[stor8].field_256) = currentTokenId
            uint256(stor24[stor8].field_512) = ('cd', 4)[1]
            uint256(stor24[stor8].field_768) = ('cd', 4)[2]
            uint256(stor24[stor8].field_1024) = ('cd', 4)[3]
            uint256(stor24[stor8].field_1280) = ('cd', 4)[4]
            uint256(stor24[stor8].field_1536) = ('cd', 4)[5]
            if ext_call.return_data[0] > 5:
                revert with 0, 33
            uint256(stor24[stor8].field_1792) = ext_call.return_data[0]
    if ('cd', 4)[7] > 5:
        revert with 0, 33
    Mask(248, 0, stor24[stor8].field_1800) = Mask(248, 0, ('cd', 4)[7])
    return currentTokenId
}

function sub_a43e4818(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] < 2
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    idx = 0
    s = 1
    while idx < ('cd', 4).length:
        if address(ownerOf[cd[((32 * idx) + cd[4] + 36)]]) != address(cd[36]):
            revert with 0, 'Not owner'
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 24
        _93 = mem[64]
        mem[64] = mem[64] + 288
        if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0):
            if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5 < 32:
                revert with 0, 34
            _96 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5) + 32
            mem[_96] = uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5
            if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0):
                if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)):
                    if 31 >= uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5:
                        mem[_96 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + cd[4] + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 24)
                        mem[_96 + 32] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)
                        t = _96 + 32
                        u = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 24))
                        while _96 + (uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128:
                    if 31 >= stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128:
                        mem[_96 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + cd[4] + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 24)
                        mem[_96 + 32] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)
                        t = _96 + 32
                        u = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 24))
                        while _96 + stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_93] = _96
        else:
            if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            _97 = mem[64]
            mem[64] = mem[64] + ceil32(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128) + 32
            mem[_97] = stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128
            if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0):
                if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)):
                    if 31 >= uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5:
                        mem[_97 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + cd[4] + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 24)
                        mem[_97 + 32] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)
                        t = _97 + 32
                        u = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 24))
                        while _97 + (uint255(uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)) * 0.5) > t:
                            mem[t + 32] = uint256(stor1[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if bool(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                    revert with 0, 34
                if stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128:
                    if 31 >= stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128:
                        mem[_97 + 32] = 256 * Mask(248, 0, stor24[cd[((32 * idx) + cd[4] + 36)]].field_8)
                    else:
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 24)
                        mem[_97 + 32] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_0)
                        t = _97 + 32
                        u = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 24))
                        while _97 + stor24[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 > t:
                            mem[t + 32] = uint256(stor1[u].field_0)
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_93] = _97
        mem[_93 + 32] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_256)
        mem[_93 + 64] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_512)
        mem[_93 + 96] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768)
        mem[_93 + 128] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1024)
        mem[_93 + 160] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1280)
        mem[_93 + 192] = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1536)
        if uint8(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1792) > 5:
            revert with 0, 33
        mem[_93 + 224] = uint8(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1792)
        if uint8(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1800) > 5:
            revert with 0, 33
        mem[_93 + 256] = uint8(stor24[cd[((32 * idx) + cd[4] + 36)]].field_1800)
        if cd[68] > 1:
            revert with 0, 33
        if not s:
            return bool(s)
        if not cd[68]:
            if uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) > !sub_eb77db08:
                revert with 0, 17
            if uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_eb77db08 > block.timestamp:
                return uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_eb77db08 <= block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_eb77db08 <= block.timestamp
            continue 
        if uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) > !sub_fb0ecf68:
            revert with 0, 17
        if uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_fb0ecf68 > block.timestamp:
            return uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_fb0ecf68 <= block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = uint256(stor24[cd[((32 * idx) + cd[4] + 36)]].field_768) + sub_fb0ecf68 <= block.timestamp
        continue 
    return bool(s)
}

function sub_1a7c5631(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 6
    require arg3 == bool(arg3)
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    require balanceOf[address(arg1)] > 0
    idx = 1
    while idx <= currentTokenId:
        mem[0] = idx
        mem[32] = 3
        if address(ownerOf[idx]) == address(arg1):
            if not arg3:
                mem[0] = idx
                mem[32] = 24
                _76 = mem[64]
                mem[64] = mem[64] + 288
                if bool(stor24[idx].field_0):
                    if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    _79 = mem[64]
                    mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                    mem[_79] = uint255(uint256(stor24[idx].field_0)) * 0.5
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor24[idx].field_0)):
                            if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                mem[_79 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                            else:
                                mem[0] = sha3(idx, 24)
                                mem[_79 + 32] = uint256(stor24[idx].field_0)
                                s = _79 + 32
                                t = sha3(sha3(idx, 24))
                                while _79 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor24[idx].field_1 % 128:
                            if 31 >= stor24[idx].field_1 % 128:
                                mem[_79 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                            else:
                                mem[0] = sha3(idx, 24)
                                mem[_79 + 32] = uint256(stor24[idx].field_0)
                                s = _79 + 32
                                t = sha3(sha3(idx, 24))
                                while _79 + stor24[idx].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_76] = _79
                else:
                    if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                        revert with 0, 34
                    _80 = mem[64]
                    mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                    mem[_80] = stor24[idx].field_1 % 128
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, uint256(stor24[idx].field_0)):
                            if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                mem[_80 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                            else:
                                mem[0] = sha3(idx, 24)
                                mem[_80 + 32] = uint256(stor24[idx].field_0)
                                s = _80 + 32
                                t = sha3(sha3(idx, 24))
                                while _80 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        if stor24[idx].field_1 % 128:
                            if 31 >= stor24[idx].field_1 % 128:
                                mem[_80 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                            else:
                                mem[0] = sha3(idx, 24)
                                mem[_80 + 32] = uint256(stor24[idx].field_0)
                                s = _80 + 32
                                t = sha3(sha3(idx, 24))
                                while _80 + stor24[idx].field_1 % 128 > s:
                                    mem[s + 32] = uint256(stor1[t].field_0)
                                    s = s + 32
                                    t = t + 1
                                    continue 
                    mem[_76] = _80
                mem[_76 + 32] = uint256(stor24[idx].field_256)
                mem[_76 + 64] = uint256(stor24[idx].field_512)
                mem[_76 + 96] = uint256(stor24[idx].field_768)
                mem[_76 + 128] = uint256(stor24[idx].field_1024)
                mem[_76 + 160] = uint256(stor24[idx].field_1280)
                mem[_76 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_76 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_76 + 256] = uint8(stor24[idx].field_1800)
                if uint256(stor24[idx].field_768) > !sub_eb77db08:
                    revert with 0, 17
                if uint256(stor24[idx].field_768) + sub_eb77db08 <= block.timestamp:
                    mem[0] = idx
                    mem[32] = 24
                    uint256(stor24[idx].field_1024) = 0
                    uint256(stor24[idx].field_768) = block.timestamp
            else:
                if arg2 > 5:
                    revert with 0, 33
                mem[0] = idx
                mem[32] = 24
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == arg2:
                    mem[0] = idx
                    mem[32] = 24
                    _78 = mem[64]
                    mem[64] = mem[64] + 288
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _81 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                        mem[_81] = uint255(uint256(stor24[idx].field_0)) * 0.5
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_81 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_81 + 32] = uint256(stor24[idx].field_0)
                                    s = _81 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _81 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_81 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_81 + 32] = uint256(stor24[idx].field_0)
                                    s = _81 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _81 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_78] = _81
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        _82 = mem[64]
                        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                        mem[_82] = stor24[idx].field_1 % 128
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_82 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_82 + 32] = uint256(stor24[idx].field_0)
                                    s = _82 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _82 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_82 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_82 + 32] = uint256(stor24[idx].field_0)
                                    s = _82 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _82 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        mem[_78] = _82
                    mem[_78 + 32] = uint256(stor24[idx].field_256)
                    mem[_78 + 64] = uint256(stor24[idx].field_512)
                    mem[_78 + 96] = uint256(stor24[idx].field_768)
                    mem[_78 + 128] = uint256(stor24[idx].field_1024)
                    mem[_78 + 160] = uint256(stor24[idx].field_1280)
                    mem[_78 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_78 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_78 + 256] = uint8(stor24[idx].field_1800)
                    if uint256(stor24[idx].field_768) > !sub_eb77db08:
                        revert with 0, 17
                    if uint256(stor24[idx].field_768) + sub_eb77db08 <= block.timestamp:
                        mem[0] = idx
                        mem[32] = 24
                        uint256(stor24[idx].field_1024) = 0
                        uint256(stor24[idx].field_768) = block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_09eb4ad4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] <= test266151307()
        require calldata.size + -cd[4] + -cd[s] - 36 >= 288
        _250 = mem[64]
        if mem[64] + 288 < mem[64] or mem[64] + 288 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 288
        require cd[(cd[4] + cd[s] + 36)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] > test266151307():
            revert with 0, 65
        _262 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)])) + 1
        mem[_262] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] + 68 <= calldata.size
        mem[_262 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)]]
        mem[_262 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 36)] + 32] = 0
        mem[_250] = _262
        mem[_250 + 32] = cd[(cd[4] + cd[s] + 68)]
        mem[_250 + 64] = cd[(cd[4] + cd[s] + 100)]
        mem[_250 + 96] = cd[(cd[4] + cd[s] + 132)]
        mem[_250 + 128] = cd[(cd[4] + cd[s] + 164)]
        mem[_250 + 160] = cd[(cd[4] + cd[s] + 196)]
        mem[_250 + 192] = cd[(cd[4] + cd[s] + 228)]
        require cd[(cd[4] + cd[s] + 260)] < 6
        mem[_250 + 224] = cd[(cd[4] + cd[s] + 260)]
        require cd[(cd[4] + cd[s] + 292)] < 6
        mem[_250 + 256] = cd[(cd[4] + cd[s] + 292)]
        mem[t] = _250
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    mem[0] = msg.sender
    mem[32] = 22
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    _498 = mem[96]
    idx = 0
    while idx < _498:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[mem[(32 * idx) + 128] + 64] != 0:
            if idx >= mem[96]:
                revert with 0, 50
            _503 = mem[(32 * idx) + 128]
            if not stor22[msg.sender]:
                revert with 0, 'Not allowed'
            if currentTokenId > -2:
                revert with 0, 17
            currentTokenId++
            if not address(cd[36]):
                revert with 0, 'ERC721: mint to the zero address'
            if address(ownerOf[stor8]):
                revert with 0, 'ERC721: token already minted'
            if balanceOf[address(cd[36])] > -2:
                revert with 0, 17
            balanceOf[address(cd[36])]++
            mem[0] = currentTokenId
            mem[32] = 3
            address(ownerOf[stor8]) = address(cd[36])
            emit Transfer(0, address(cd[36]), currentTokenId);
            mem[mem[(32 * idx) + 128] + 32] = currentTokenId
            if mem[_503 + 256] > 5:
                revert with 0, 33
            if mem[_503 + 256] == 4:
                if mem[_503 + 224] > 5:
                    revert with 0, 33
                mem[0] = currentTokenId
                mem[32] = 24
                _521 = mem[_503]
                _522 = mem[mem[_503]]
                if bool(stor24[stor8].field_0):
                    if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(currentTokenId, 24)
                    if not _522:
                        uint256(stor24[stor8].field_0) = 0
                        s = sha3(sha3(currentTokenId, 24))
                        while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _498 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor24[stor8].field_0) = (2 * _522) + 1
                        t = sha3(sha3(currentTokenId, 24))
                        s = _521 + 32
                        while _521 + _522 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _498 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _522 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _498 = mem[96]
                            s = s + 1
                            continue 
                else:
                    if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(currentTokenId, 24)
                    if not _522:
                        uint256(stor24[stor8].field_0) = 0
                        s = sha3(sha3(currentTokenId, 24))
                        while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _498 = mem[96]
                            s = s + 1
                            continue 
                    else:
                        uint256(stor24[stor8].field_0) = (2 * _522) + 1
                        t = sha3(sha3(currentTokenId, 24))
                        s = _521 + 32
                        while _521 + _522 + 32 > s:
                            uint256(stor[t].field_0) = mem[s]
                            _498 = mem[96]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _522 + 31) >> 5)
                        while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            _498 = mem[96]
                            s = s + 1
                            continue 
            else:
                if mem[_503 + 256] > 5:
                    revert with 0, 33
                if mem[_503 + 256] == 5:
                    if mem[_503 + 224] > 5:
                        revert with 0, 33
                    mem[0] = currentTokenId
                    mem[32] = 24
                    _525 = mem[_503]
                    _526 = mem[mem[_503]]
                    if bool(stor24[stor8].field_0):
                        if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(currentTokenId, 24)
                        if not _526:
                            uint256(stor24[stor8].field_0) = 0
                            s = sha3(sha3(currentTokenId, 24))
                            while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor24[stor8].field_0) = (2 * _526) + 1
                            t = sha3(sha3(currentTokenId, 24))
                            s = _525 + 32
                            while _525 + _526 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _498 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _526 + 31) >> 5)
                            while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(currentTokenId, 24)
                        if not _526:
                            uint256(stor24[stor8].field_0) = 0
                            s = sha3(sha3(currentTokenId, 24))
                            while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor24[stor8].field_0) = (2 * _526) + 1
                            t = sha3(sha3(currentTokenId, 24))
                            s = _525 + 32
                            while _525 + _526 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _498 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _526 + 31) >> 5)
                            while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                else:
                    require ext_code.size(stor21)
                    staticcall stor21.0x164af651 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _523 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_523] > 5:
                        revert with 0, 33
                    mem[_503 + 224] = mem[_523]
                    mem[0] = currentTokenId
                    mem[32] = 24
                    _531 = mem[_503]
                    _532 = mem[mem[_503]]
                    if bool(stor24[stor8].field_0):
                        if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(currentTokenId, 24)
                        if not _532:
                            uint256(stor24[stor8].field_0) = 0
                            s = sha3(sha3(currentTokenId, 24))
                            while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor24[stor8].field_0) = (2 * _532) + 1
                            t = sha3(sha3(currentTokenId, 24))
                            s = _531 + 32
                            while _531 + _532 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _498 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _532 + 31) >> 5)
                            while sha3(sha3(currentTokenId, 24)) + ((uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                    else:
                        if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(currentTokenId, 24)
                        if not _532:
                            uint256(stor24[stor8].field_0) = 0
                            s = sha3(sha3(currentTokenId, 24))
                            while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
                        else:
                            uint256(stor24[stor8].field_0) = (2 * _532) + 1
                            t = sha3(sha3(currentTokenId, 24))
                            s = _531 + 32
                            while _531 + _532 + 32 > s:
                                uint256(stor[t].field_0) = mem[s]
                                _498 = mem[96]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(currentTokenId, 24)) + (Mask(251, 0, _532 + 31) >> 5)
                            while sha3(sha3(currentTokenId, 24)) + (stor24[stor8].field_1 % 128 + 31 / 32) > s:
                                uint256(stor[s].field_0) = 0
                                _498 = mem[96]
                                s = s + 1
                                continue 
            uint256(stor24[stor8].field_256) = currentTokenId
            uint256(stor24[stor8].field_512) = mem[_503 + 64]
            uint256(stor24[stor8].field_768) = mem[_503 + 96]
            uint256(stor24[stor8].field_1024) = mem[_503 + 128]
            uint256(stor24[stor8].field_1280) = mem[_503 + 160]
            uint256(stor24[stor8].field_1536) = mem[_503 + 192]
            if mem[_503 + 224] > 5:
                revert with 0, 33
            uint256(stor24[stor8].field_1792) = mem[_503 + 224]
            if mem[_503 + 256] > 5:
                revert with 0, 33
            Mask(248, 0, stor24[stor8].field_1800) = mem[_503 + 257 len 31]
        if idx == -1:
            revert with 0, 17
        _498 = mem[96]
        idx = idx + 1
        continue 
}

function sub_049ebda6(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if ('cd', 68).length < 2:
        revert with 0, 'Invalid length'
    idx = 0
    while idx < ('cd', 68).length:
        if address(ownerOf[cd[((32 * idx) + cd[68] + 36)]]) != address(cd[4]):
            revert with 0, 'Not owner'
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = 24
        if uint8(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1800) != 4:
            revert with 0, 'Not blackhole'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = 0
    while idx < ('cd', 68).length:
        if t > !uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512):
            revert with 0, 17
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if s > !uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024):
            revert with 0, 17
        if idx >= ('cd', 68).length:
            revert with 0, 50
        address(approved[cd[((32 * idx) + cd[68] + 36)]]) = 0
        emit Approval(address(ownerOf[cd[((32 * idx) + cd[68] + 36)]]), 0, cd[((32 * idx) + cd[68] + 36)]);
        if balanceOf[address(stor3[cd[((32 * idx) + cd[68] + 36)]])] < 1:
            revert with 0, 17
        balanceOf[address(stor3[cd[((32 * idx) + cd[68] + 36)]])]--
        address(ownerOf[cd[((32 * idx) + cd[68] + 36)]]) = 0
        emit Transfer(address(ownerOf[cd[((32 * idx) + cd[68] + 36)]]), 0, cd[((32 * idx) + cd[68] + 36)]);
        if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0):
            if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)):
                if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0):
                    if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                    if 31 < uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5:
                        u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7)) + ((uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5) + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            u = u + 1
                            continue 
                else:
                    if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                    if 31 < stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128:
                        u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7)) + (stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            u = u + 1
                            continue 
        else:
            if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            if stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128:
                if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0):
                    if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                    if 31 < uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5:
                        u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7))
                        while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7)) + ((uint255(uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5) + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            u = u + 1
                            continue 
                else:
                    if bool(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) == stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                        revert with 0, 34
                    uint256(stor7[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                    if 31 >= stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128:
                        if idx >= ('cd', 68).length:
                            revert with 0, 50
                        mem[0] = cd[((32 * idx) + cd[68] + 36)]
                        mem[32] = 24
                        if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0):
                            if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                            if 31 < uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5:
                                mem[0] = sha3(cd[((32 * idx) + cd[68] + 36)], 24)
                                u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24))
                                while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24)) + ((uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5) + 31 / 32) > u:
                                    uint256(stor[u].field_0) = 0
                                    u = u + 1
                                    continue 
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_256) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_768) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1280) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1536) = 0
                            uint16(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1792) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024)
                            t = t + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512)
                            continue 
                        if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) == stor24[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                            revert with 0, 34
                        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
                        if 31 >= stor24[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128:
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_256) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_768) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1280) = 0
                            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1536) = 0
                            uint16(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1792) = 0
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024)
                            t = t + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512)
                            continue 
                        mem[0] = sha3(cd[((32 * idx) + cd[68] + 36)], 24)
                        u = sha3(sha3(cd[((32 * u) + cd[68] + 36)], 24))
                        while sha3(sha3(cd[((32 * u) + cd[68] + 36)], 24)) + (stor24[cd[((32 * u) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > u:
                            uint256(stor[u].field_0) = 0
                            u = u + 1
                            continue 
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_256) = 0
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_512) = 0
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_768) = 0
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_1024) = 0
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_1280) = 0
                        uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_1536) = 0
                        uint16(stor24[cd[((32 * u) + cd[68] + 36)]].field_1792) = 0
                        if sha3(sha3(cd[((32 * u) + cd[68] + 36)], 24)) + (stor24[cd[((32 * u) + cd[68] + 36)]].field_1 % 128 + 31 / 32) == -1:
                            revert with 0, 17
                        u = sha3(sha3(cd[((32 * u) + cd[68] + 36)], 24)) + (stor24[cd[((32 * u) + cd[68] + 36)]].field_1 % 128 + 31 / 32) + 1
                        s = s + uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_1024)
                        t = t + uint256(stor24[cd[((32 * u) + cd[68] + 36)]].field_512)
                        continue 
                    u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7))
                    while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 7)) + (stor7[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > u:
                        uint256(stor[u].field_0) = 0
                        u = u + 1
                        continue 
        if idx >= ('cd', 68).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[68] + 36)]
        mem[32] = 24
        if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0):
            if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) == uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5 < 32:
                revert with 0, 34
            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
            if 31 < uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5:
                mem[0] = sha3(cd[((32 * idx) + cd[68] + 36)], 24)
                u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24))
                while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24)) + ((uint255(uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0)) * 0.5) + 31 / 32) > u:
                    uint256(stor[u].field_0) = 0
                    u = u + 1
                    continue 
        else:
            if bool(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) == stor24[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 < 32:
                revert with 0, 34
            uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_0) = 0
            if 31 < stor24[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128:
                mem[0] = sha3(cd[((32 * idx) + cd[68] + 36)], 24)
                u = sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24))
                while sha3(sha3(cd[((32 * idx) + cd[68] + 36)], 24)) + (stor24[cd[((32 * idx) + cd[68] + 36)]].field_1 % 128 + 31 / 32) > u:
                    uint256(stor[u].field_0) = 0
                    u = u + 1
                    continue 
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_256) = 0
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512) = 0
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_768) = 0
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024) = 0
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1280) = 0
        uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1536) = 0
        uint16(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1792) = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_1024)
        t = t + uint256(stor24[cd[((32 * idx) + cd[68] + 36)]].field_512)
        continue 
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if currentTokenId > -2:
        revert with 0, 17
    currentTokenId++
    if not address(cd[4]):
        revert with 0, 'ERC721: mint to the zero address'
    if address(ownerOf[stor8]):
        revert with 0, 'ERC721: token already minted'
    if balanceOf[address(cd[4])] > -2:
        revert with 0, 17
    balanceOf[address(cd[4])]++
    address(ownerOf[stor8]) = address(cd[4])
    emit Transfer(0, address(cd[4]), currentTokenId);
    if bool(stor24[stor8].field_0):
        if bool(stor24[stor8].field_0) == uint255(uint256(stor24[stor8].field_0)) * 0.5 < 32:
            revert with 0, 34
        if ('cd', 36).length:
            uint256(stor24[stor8][].field_0) = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
        else:
            uint256(stor24[stor8].field_0) = 0
            idx = 0
            while (uint255(uint256(stor24[stor8].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor24[stor8][idx].field_0) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor24[stor8].field_0) == stor24[stor8].field_1 % 128 < 32:
            revert with 0, 34
        if ('cd', 36).length:
            uint256(stor24[stor8][].field_0) = Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length])
        else:
            uint256(stor24[stor8].field_0) = 0
            idx = 0
            while stor24[stor8].field_1 % 128 + 31 / 32 > idx:
                uint256(stor24[stor8][idx].field_0) = 0
                idx = idx + 1
                continue 
    uint256(stor24[stor8].field_256) = currentTokenId
    uint256(stor24[stor8].field_512) = t
    uint256(stor24[stor8].field_768) = block.timestamp
    uint256(stor24[stor8].field_1024) = s
    uint256(stor24[stor8].field_1280) = 0
    uint256(stor24[stor8].field_1536) = 0
    uint8(stor24[stor8].field_1792) = 0
    stor24[stor8].field_2048 % 1 = 0
    uint8(stor24[stor8].field_1800) = 4
    mem[ceil32(('cd', 36).length) + 416] = 64
    mem[ceil32(('cd', 36).length) + 480] = ('cd', 36).length
    mem[ceil32(('cd', 36).length) + 448] = currentTokenId
    emit 0xe85480be: Mask(8 * -ceil32(('cd', 36).length) + ('cd', 36).length + 32, 0, 0), mem[('cd', 36).length + 448 len (2 * ceil32(('cd', 36).length)) + -('cd', 36).length + 64], address(cd[4])
}

function sub_d34db045(?) payable {
    require calldata.size - 4 >= 32
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor24[arg1].field_0)):
            if 31 < uint255(uint256(stor24[arg1].field_0)) * 0.5:
                idx = 416
                s = 0
                while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor24[arg1].field_1 % 128:
            if 31 < stor24[arg1].field_1 % 128:
                idx = 416
                s = 0
                while stor24[arg1].field_1 % 128 + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if uint8(stor24[arg1].field_1792) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) == 4:
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint8(stor24[arg1].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[arg1].field_1800) == 5:
            if uint256(stor24[arg1].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7:
                revert with 0, 17
            if block.timestamp < uint256(stor24[arg1].field_768):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7:
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                revert with 0, 17
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            return uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
                   uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
                   uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_1280) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600)
        if uint256(stor24[arg1].field_512) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_512):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7:
            revert with 0, 17
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_512):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7:
            revert with 0, 17
        if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
            revert with 0, 17
        require ext_code.size(stor21)
        staticcall stor21.0x9a2754f4 with:
                gas gas_remaining wei
               args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
            revert with 0, 17
        return uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
               uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
               uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_512) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_7e953ee7) / 10000 / 24 * 3600)
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if block.timestamp < uint256(stor24[arg1].field_768):
        revert with 0, 17
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) == 5:
        if uint8(stor24[arg1].field_1800) == 5:
            if uint256(stor24[arg1].field_1280) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[arg1].field_768):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0):
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            return uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
                   uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
                   uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600)
        if uint256(stor24[arg1].field_512) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_512):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0):
            revert with 0, 17
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_512):
            revert with 0, 17
        if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0):
            revert with 0, 17
        if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600):
            revert with 0, 17
        require ext_code.size(stor21)
        staticcall stor21.0x9a2754f4 with:
                gas gas_remaining wei
               args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
            revert with 0, 17
        return uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
               uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
               uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600)
    if uint8(stor24[arg1].field_1800) == 5:
        if uint256(stor24[arg1].field_1280) and sub_f5597032 > -1 / uint256(stor24[arg1].field_1280):
            revert with 0, 17
        if uint256(stor24[arg1].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032:
            revert with 0, 17
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint256(stor24[arg1].field_1280) and sub_f5597032 > -1 / uint256(stor24[arg1].field_1280):
            revert with 0, 17
        if uint256(stor24[arg1].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032:
            revert with 0, 17
        if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
            revert with 0, 17
        require ext_code.size(stor21)
        staticcall stor21.0x9a2754f4 with:
                gas gas_remaining wei
               args arg1, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
            revert with 0, 17
        return uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
               uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
               uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_1280) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_f5597032) / 10000 / 24 * 3600)
    if uint256(stor24[arg1].field_512) and sub_f5597032 > -1 / uint256(stor24[arg1].field_512):
        revert with 0, 17
    if uint256(stor24[arg1].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * sub_f5597032:
        revert with 0, 17
    if block.timestamp < uint256(stor24[arg1].field_768):
        revert with 0, 17
    if uint256(stor24[arg1].field_512) and sub_f5597032 > -1 / uint256(stor24[arg1].field_512):
        revert with 0, 17
    if uint256(stor24[arg1].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * sub_f5597032:
        revert with 0, 17
    if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_f5597032) / 10000 / 24 * 3600):
        revert with 0, 17
    require ext_code.size(stor21)
    staticcall stor21.0x9a2754f4 with:
            gas gas_remaining wei
           args arg1, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
        revert with 0, 17
    return uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000, 
           uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000,
           uint256(stor24[arg1].field_1024) + ((block.timestamp * uint256(stor24[arg1].field_512) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_f5597032) / 10000 / 24 * 3600)
}

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 24
    mem[96] = 0xa633b2f200000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(sub_ded2abc3[arg1].field_0)
    mem[132] = 64
    mem[164] = 288
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        mem[452] = uint255(uint256(stor24[arg1].field_0)) * 0.5
        if not bool(stor24[arg1].field_0):
            mem[484] = Mask(248, 8, uint256(stor24[arg1].field_0))
            mem[196] = uint256(stor24[arg1].field_256)
            mem[228] = uint256(stor24[arg1].field_512)
            mem[260] = uint256(stor24[arg1].field_768)
            mem[292] = uint256(stor24[arg1].field_1024)
            mem[324] = uint256(stor24[arg1].field_1280)
            mem[356] = uint256(stor24[arg1].field_1536)
            if uint8(stor24[arg1].field_1792) >= 6:
                revert with 0, 33
            mem[388] = uint8(stor24[arg1].field_1792)
            if uint8(stor24[arg1].field_1800) >= 6:
                revert with 0, 33
            mem[420] = uint8(stor24[arg1].field_1800)
            require ext_code.size(stor21)
            staticcall stor21.0xa633b2f2 with:
                    gas gas_remaining wei
                   args 0, uint32(sub_ded2abc3[arg1].field_0), 64, 288, uint256(stor24[arg1].field_256), uint256(stor24[arg1].field_512), uint256(stor24[arg1].field_768), uint256(stor24[arg1].field_1024), uint256(stor24[arg1].field_1280), uint256(stor24[arg1].field_1536), uint8(stor24[arg1].field_1792), uint8(stor24[arg1].field_1800), 2 * Mask(256, -1, uint256(stor24[arg1].field_0)), Mask(248, 8, uint256(stor24[arg1].field_0))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _14 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
            require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
            require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
            _20 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
            if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _20
            require _14 + _20 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_20)] = mem[_14 + 128 len ceil32(_20)]
            if ceil32(_20) > _20:
                mem[_20 + ceil32(return_data.size) + 128] = 0
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _20
            mem[mem[64] + 64 len ceil32(_20)] = mem[ceil32(return_data.size) + 128 len ceil32(_20)]
            if ceil32(_20) > _20:
                mem[_20 + mem[64] + 64] = 0
            return Array(len=_20, data=mem[mem[64] + 64 len ceil32(_20)])
        if bool(stor24[arg1].field_0) != 1:
            mem[196] = uint256(stor24[arg1].field_256)
            mem[228] = uint256(stor24[arg1].field_512)
            mem[260] = uint256(stor24[arg1].field_768)
            mem[292] = uint256(stor24[arg1].field_1024)
            mem[324] = uint256(stor24[arg1].field_1280)
            mem[356] = uint256(stor24[arg1].field_1536)
            if uint8(stor24[arg1].field_1792) >= 6:
                revert with 0, 33
            mem[388] = uint8(stor24[arg1].field_1792)
            if uint8(stor24[arg1].field_1800) >= 6:
                revert with 0, 33
            mem[420] = uint8(stor24[arg1].field_1800)
            require ext_code.size(stor21)
            staticcall stor21.0xa633b2f2 with:
                    gas gas_remaining wei
                   args mem[100 len -100]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _18 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
            require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
            require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
            _24 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
            if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
            mem[ceil32(return_data.size) + 96] = _24
            require _18 + _24 + 32 <= return_data.size
            mem[ceil32(return_data.size) + 128 len ceil32(_24)] = mem[_18 + 128 len ceil32(_24)]
            if ceil32(_24) <= _24:
                _108 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _24
                mem[mem[64] + 64 len ceil32(_24)] = mem[ceil32(return_data.size) + 128 len ceil32(_24)]
                if ceil32(_24) <= _24:
                    return Array(len=_24, data=mem[mem[64] + 64 len ceil32(_24)])
                mem[_24 + mem[64] + 64] = 0
                return memory
                  from mem[64]
                   len ceil32(_24) + _108 + -mem[64] + 64
            mem[_24 + ceil32(return_data.size) + 128] = 0
            _109 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _24
            mem[mem[64] + 64 len ceil32(_24)] = mem[ceil32(return_data.size) + 128 len ceil32(_24)]
            if ceil32(_24) <= _24:
                return Array(len=_24, data=mem[mem[64] + 64 len ceil32(_24)])
            mem[_24 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_24) + _109 + -mem[64] + 64
        mem[0] = sha3(arg1, 24)
        idx = 0
        s = 0
        while idx < uint255(uint256(stor24[arg1].field_0)) * 0.5:
            mem[idx + 484] = uint256(stor24[arg1][s].field_0)
            idx = idx + 32
            s = s + 1
            continue 
        mem[196] = uint256(stor24[arg1].field_256)
        mem[228] = uint256(stor24[arg1].field_512)
        mem[260] = uint256(stor24[arg1].field_768)
        mem[292] = uint256(stor24[arg1].field_1024)
        mem[324] = uint256(stor24[arg1].field_1280)
        mem[356] = uint256(stor24[arg1].field_1536)
        if uint8(stor24[arg1].field_1792) >= 6:
            revert with 0, 33
        mem[388] = uint8(stor24[arg1].field_1792)
        if uint8(stor24[arg1].field_1800) >= 6:
            revert with 0, 33
        mem[420] = uint8(stor24[arg1].field_1800)
        require ext_code.size(stor21)
        staticcall stor21.0xa633b2f2 with:
                gas gas_remaining wei
               args 0, uint32(sub_ded2abc3[arg1].field_0), 64, 288, uint256(stor24[arg1].field_256), uint256(stor24[arg1].field_512), uint256(stor24[arg1].field_768), uint256(stor24[arg1].field_1024), uint256(stor24[arg1].field_1280), uint256(stor24[arg1].field_1536), uint8(stor24[arg1].field_1792), uint8(stor24[arg1].field_1800), 2 * Mask(256, -1, uint256(stor24[arg1].field_0)), mem[484 len ceil32(uint255(uint256(stor24[arg1].field_0)) * 0.5)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _138 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
        require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
        _152 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
        if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _152
        require _138 + _152 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_152)] = mem[_138 + 128 len ceil32(_152)]
        if ceil32(_152) > _152:
            mem[_152 + ceil32(return_data.size) + 128] = 0
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _152
        mem[mem[64] + 64 len ceil32(_152)] = mem[ceil32(return_data.size) + 128 len ceil32(_152)]
        if ceil32(_152) > _152:
            mem[_152 + mem[64] + 64] = 0
        return Array(len=_152, data=mem[mem[64] + 64 len ceil32(_152)])
    if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
        revert with 0, 34
    mem[452] = stor24[arg1].field_1 % 128
    if not bool(stor24[arg1].field_0):
        mem[484] = Mask(248, 8, uint256(stor24[arg1].field_0))
        mem[196] = uint256(stor24[arg1].field_256)
        mem[228] = uint256(stor24[arg1].field_512)
        mem[260] = uint256(stor24[arg1].field_768)
        mem[292] = uint256(stor24[arg1].field_1024)
        mem[324] = uint256(stor24[arg1].field_1280)
        mem[356] = uint256(stor24[arg1].field_1536)
        if uint8(stor24[arg1].field_1792) >= 6:
            revert with 0, 33
        mem[388] = uint8(stor24[arg1].field_1792)
        if uint8(stor24[arg1].field_1800) >= 6:
            revert with 0, 33
        mem[420] = uint8(stor24[arg1].field_1800)
        require ext_code.size(stor21)
        staticcall stor21.0xa633b2f2 with:
                gas gas_remaining wei
               args 0, uint32(sub_ded2abc3[arg1].field_0), 64, 288, uint256(stor24[arg1].field_256), uint256(stor24[arg1].field_512), uint256(stor24[arg1].field_768), uint256(stor24[arg1].field_1024), uint256(stor24[arg1].field_1280), uint256(stor24[arg1].field_1536), uint8(stor24[arg1].field_1792), uint8(stor24[arg1].field_1800), stor24[arg1].field_0 % 128, Mask(248, 8, uint256(stor24[arg1].field_0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _19 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
        require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
        _25 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
        if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _25
        require _19 + _25 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_25)] = mem[_19 + 128 len ceil32(_25)]
        if ceil32(_25) <= _25:
            _110 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _25
            mem[mem[64] + 64 len ceil32(_25)] = mem[ceil32(return_data.size) + 128 len ceil32(_25)]
            if ceil32(_25) <= _25:
                return Array(len=_25, data=mem[mem[64] + 64 len ceil32(_25)])
            mem[_25 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_25) + _110 + -mem[64] + 64
        mem[_25 + ceil32(return_data.size) + 128] = 0
        _111 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _25
        mem[mem[64] + 64 len ceil32(_25)] = mem[ceil32(return_data.size) + 128 len ceil32(_25)]
        if ceil32(_25) <= _25:
            return Array(len=_25, data=mem[mem[64] + 64 len ceil32(_25)])
        mem[_25 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_25) + _111 + -mem[64] + 64
    if bool(stor24[arg1].field_0) != 1:
        mem[196] = uint256(stor24[arg1].field_256)
        mem[228] = uint256(stor24[arg1].field_512)
        mem[260] = uint256(stor24[arg1].field_768)
        mem[292] = uint256(stor24[arg1].field_1024)
        mem[324] = uint256(stor24[arg1].field_1280)
        mem[356] = uint256(stor24[arg1].field_1536)
        if uint8(stor24[arg1].field_1792) >= 6:
            revert with 0, 33
        mem[388] = uint8(stor24[arg1].field_1792)
        if uint8(stor24[arg1].field_1800) >= 6:
            revert with 0, 33
        mem[420] = uint8(stor24[arg1].field_1800)
        require ext_code.size(stor21)
        staticcall stor21.0xa633b2f2 with:
                gas gas_remaining wei
               args mem[100 len -100]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _22 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
        require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
        require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
        _27 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
        if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
        mem[ceil32(return_data.size) + 96] = _27
        require _22 + _27 + 32 <= return_data.size
        mem[ceil32(return_data.size) + 128 len ceil32(_27)] = mem[_22 + 128 len ceil32(_27)]
        if ceil32(_27) <= _27:
            _112 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _27
            mem[mem[64] + 64 len ceil32(_27)] = mem[ceil32(return_data.size) + 128 len ceil32(_27)]
            if ceil32(_27) <= _27:
                return Array(len=_27, data=mem[mem[64] + 64 len ceil32(_27)])
            mem[_27 + mem[64] + 64] = 0
            return memory
              from mem[64]
               len ceil32(_27) + _112 + -mem[64] + 64
        mem[_27 + ceil32(return_data.size) + 128] = 0
        _113 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _27
        mem[mem[64] + 64 len ceil32(_27)] = mem[ceil32(return_data.size) + 128 len ceil32(_27)]
        if ceil32(_27) <= _27:
            return Array(len=_27, data=mem[mem[64] + 64 len ceil32(_27)])
        mem[_27 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_27) + _113 + -mem[64] + 64
    mem[0] = sha3(arg1, 24)
    idx = 0
    s = 0
    while idx < stor24[arg1].field_1 % 128:
        mem[idx + 484] = uint256(stor24[arg1][s].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    mem[196] = uint256(stor24[arg1].field_256)
    mem[228] = uint256(stor24[arg1].field_512)
    mem[260] = uint256(stor24[arg1].field_768)
    mem[292] = uint256(stor24[arg1].field_1024)
    mem[324] = uint256(stor24[arg1].field_1280)
    mem[356] = uint256(stor24[arg1].field_1536)
    if uint8(stor24[arg1].field_1792) >= 6:
        revert with 0, 33
    mem[388] = uint8(stor24[arg1].field_1792)
    if uint8(stor24[arg1].field_1800) >= 6:
        revert with 0, 33
    mem[420] = uint8(stor24[arg1].field_1800)
    require ext_code.size(stor21)
    staticcall stor21.0xa633b2f2 with:
            gas gas_remaining wei
           args 0, uint32(sub_ded2abc3[arg1].field_0), 64, 288, uint256(stor24[arg1].field_256), uint256(stor24[arg1].field_512), uint256(stor24[arg1].field_768), uint256(stor24[arg1].field_1024), uint256(stor24[arg1].field_1280), uint256(stor24[arg1].field_1536), uint8(stor24[arg1].field_1792), uint8(stor24[arg1].field_1800), stor24[arg1].field_0 % 128, mem[484 len ceil32(stor24[arg1].field_1 % 128)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _147 = mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32)
    require mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 127
    _153 = mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96]
    if mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96 len 4], Mask(224, 0, sub_ded2abc3[arg1].field_32) + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _153
    require _147 + _153 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_153)] = mem[_147 + 128 len ceil32(_153)]
    if ceil32(_153) <= _153:
        _202 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _153
        mem[mem[64] + 64 len ceil32(_153)] = mem[ceil32(return_data.size) + 128 len ceil32(_153)]
        if ceil32(_153) <= _153:
            return Array(len=_153, data=mem[mem[64] + 64 len ceil32(_153)])
        mem[_153 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_153) + _202 + -mem[64] + 64
    mem[_153 + ceil32(return_data.size) + 128] = 0
    _203 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _153
    mem[mem[64] + 64 len ceil32(_153)] = mem[ceil32(return_data.size) + 128 len ceil32(_153)]
    if ceil32(_153) <= _153:
        return Array(len=_153, data=mem[mem[64] + 64 len ceil32(_153)])
    mem[_153 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_153) + _203 + -mem[64] + 64
}

function sub_2c2cdd21(?) payable {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if not address(ownerOf[arg1]):
        revert with 0, 'Not exist'
    if address(ownerOf[arg1]) != address(arg3):
        revert with 0, 'Not owner'
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) != 4:
        revert with 0, 'Invalid token'
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
    if bool(stor24[arg1].field_0):
        if bool(stor24[arg1].field_0) == uint255(uint256(stor24[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor24[arg1].field_0)):
            if 31 < uint255(uint256(stor24[arg1].field_0)) * 0.5:
                idx = 416
                s = 0
                while (uint255(uint256(stor24[arg1].field_0)) * 0.5) + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor24[arg1].field_0) == stor24[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor24[arg1].field_1 % 128:
            if 31 < stor24[arg1].field_1 % 128:
                idx = 416
                s = 0
                while stor24[arg1].field_1 % 128 + 384 > idx:
                    mem[idx + 32] = uint256(stor24[arg1][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
    if uint8(stor24[arg1].field_1792) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) > 5:
        revert with 0, 33
    if uint8(stor24[arg1].field_1800) == 4:
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint8(stor24[arg1].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[arg1].field_1800) == 5:
            if uint256(stor24[arg1].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7:
                revert with 0, 17
            if block.timestamp < uint256(stor24[arg1].field_768):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_1280):
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7:
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                revert with 0, 17
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                revert with 0, 17
            uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
        else:
            if uint256(stor24[arg1].field_512) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_512):
                revert with 0, 17
            if uint256(stor24[arg1].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7:
                revert with 0, 17
            if block.timestamp < uint256(stor24[arg1].field_768):
                revert with 0, 17
            if uint256(stor24[arg1].field_512) and sub_7e953ee7 > -1 / uint256(stor24[arg1].field_512):
                revert with 0, 17
            if uint256(stor24[arg1].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7:
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * sub_7e953ee7) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                revert with 0, 17
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args arg1, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                revert with 0, 17
            if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                revert with 0, 17
            uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
    else:
        if uint8(stor24[arg1].field_1800) > 5:
            revert with 0, 33
        if block.timestamp < uint256(stor24[arg1].field_768):
            revert with 0, 17
        if uint8(stor24[arg1].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[arg1].field_1800) == 5:
            if uint8(stor24[arg1].field_1800) == 5:
                if uint256(stor24[arg1].field_1280) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_1280):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[arg1].field_768):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_1280):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args arg1, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
            else:
                if uint256(stor24[arg1].field_512) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_512):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[arg1].field_768):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) and uint256(sub_ded2abc3[arg1].field_0) > -1 / uint256(stor24[arg1].field_512):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args arg1, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * uint256(sub_ded2abc3[arg1].field_0) * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
        else:
            if uint8(stor24[arg1].field_1800) == 5:
                if uint256(stor24[arg1].field_1280) and sub_f5597032 > -1 / uint256(stor24[arg1].field_1280):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[arg1].field_768):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) and sub_f5597032 > -1 / uint256(stor24[arg1].field_1280):
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_1280) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args arg1, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
            else:
                if uint256(stor24[arg1].field_512) and sub_f5597032 > -1 / uint256(stor24[arg1].field_512):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 > -1 / uint256(stor24[arg1].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[arg1].field_768):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) and sub_f5597032 > -1 / uint256(stor24[arg1].field_512):
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[arg1].field_768) > -1 / uint256(stor24[arg1].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((block.timestamp * uint256(stor24[arg1].field_512) * sub_f5597032) - (uint256(stor24[arg1].field_768) * uint256(stor24[arg1].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args arg1, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 and ext_call.return_data[0] > -1 / uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 < uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000:
                    revert with 0, 17
                if uint256(stor24[arg1].field_1024) > !((uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)):
                    revert with 0, 17
                uint256(stor24[arg1].field_1024) = uint256(stor24[arg1].field_1024) + (uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000) - (uint256(stor24[arg1].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[arg1].field_768) / 24 * 3600 / 10000 * ext_call.return_data[0] / 10000)
    if uint256(stor24[arg1].field_512) > !arg2:
        revert with 0, 17
    uint256(stor24[arg1].field_512) += arg2
    uint256(stor24[arg1].field_768) = block.timestamp
    emit 0x3efa6c5c: arg2, arg1, address(arg3)
}

function sub_cc72ba0f(?) payable {
    require calldata.size - 4 >= 64
    if msg.sender == owner:
        if arg2 <= arg1:
            mem[96] = 1
            mem[64] = 160
            mem[128] = 96
            mem[160] = 32
            mem[192] = 1
            idx = 0
            s = 128
            t = 224
            u = (32 * mem[96]) + 224
            while idx < 1:
                mem[t] = u - 224
                _120 = mem[s]
                _125 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _125:
                    mem[v + u + 32] = mem[v + _120 + 32]
                    v = v + 32
                    continue 
                if ceil32(_125) > _125:
                    mem[_125 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_125) + u + 32
                continue 
        else:
            if arg2 < arg1:
                revert with 0, 17
            if 1 > !(arg2 - arg1):
                revert with 0, 17
            if arg2 + -arg1 + 1 > test266151307():
                revert with 0, 65
            mem[96] = arg2 + -arg1 + 1
            mem[64] = (32 * arg2 + -arg1 + 1) + 128
            if not arg2 + -arg1 + 1:
                idx = arg1
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 24
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _134 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                        mem[_134] = uint255(uint256(stor24[idx].field_0)) * 0.5
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_134 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_134 + 32] = uint256(stor24[idx].field_0)
                                    s = _134 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _134 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_134 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_134 + 32] = uint256(stor24[idx].field_0)
                                    s = _134 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _134 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _134
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        _143 = mem[64]
                        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                        mem[_143] = stor24[idx].field_1 % 128
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_143 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_143 + 32] = uint256(stor24[idx].field_0)
                                    s = _143 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _143 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_143 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_143 + 32] = uint256(stor24[idx].field_0)
                                    s = _143 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _143 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _143
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _123 = mem[64]
                mem[mem[64]] = 32
                _129 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                u = mem[64] + (32 * mem[96]) + 64
                while idx < _129:
                    mem[t] = u + -_123 - 64
                    _227 = mem[s]
                    _234 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _234:
                        mem[v + u + 32] = mem[v + _227 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_234) > _234:
                        mem[_234 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_234) + u + 32
                    continue 
            else:
                mem[128] = 96
                s = 128
                idx = arg2 + -arg1 + 1
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = arg1
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 24
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _247 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                        mem[_247] = uint255(uint256(stor24[idx].field_0)) * 0.5
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_247 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_247 + 32] = uint256(stor24[idx].field_0)
                                    s = _247 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _247 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_247 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_247 + 32] = uint256(stor24[idx].field_0)
                                    s = _247 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _247 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _247
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        _257 = mem[64]
                        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                        mem[_257] = stor24[idx].field_1 % 128
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_257 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_257 + 32] = uint256(stor24[idx].field_0)
                                    s = _257 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _257 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_257 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_257 + 32] = uint256(stor24[idx].field_0)
                                    s = _257 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _257 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _257
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _235 = mem[64]
                mem[mem[64]] = 32
                _239 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                u = mem[64] + (32 * mem[96]) + 64
                while idx < _239:
                    mem[t] = u + -_235 - 64
                    _296 = mem[s]
                    _300 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _300:
                        mem[v + u + 32] = mem[v + _296 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_300) > _300:
                        mem[_300 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_300) + u + 32
                    continue 
    else:
        if stor21 != msg.sender:
            revert with 0, 'Not allowed'
        if arg2 <= arg1:
            mem[96] = 1
            mem[64] = 160
            mem[128] = 96
            mem[160] = 32
            mem[192] = 1
            idx = 0
            s = 128
            t = 224
            u = (32 * mem[96]) + 224
            while idx < 1:
                mem[t] = u - 224
                _122 = mem[s]
                _128 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                v = 0
                while v < _128:
                    mem[v + u + 32] = mem[v + _122 + 32]
                    v = v + 32
                    continue 
                if ceil32(_128) > _128:
                    mem[_128 + u + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + 32
                u = ceil32(_128) + u + 32
                continue 
        else:
            if arg2 < arg1:
                revert with 0, 17
            if 1 > !(arg2 - arg1):
                revert with 0, 17
            if arg2 + -arg1 + 1 > test266151307():
                revert with 0, 65
            mem[96] = arg2 + -arg1 + 1
            mem[64] = (32 * arg2 + -arg1 + 1) + 128
            if not arg2 + -arg1 + 1:
                idx = arg1
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 24
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _138 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                        mem[_138] = uint255(uint256(stor24[idx].field_0)) * 0.5
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_138 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_138 + 32] = uint256(stor24[idx].field_0)
                                    s = _138 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _138 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_138 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_138 + 32] = uint256(stor24[idx].field_0)
                                    s = _138 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _138 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _138
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        _147 = mem[64]
                        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                        mem[_147] = stor24[idx].field_1 % 128
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_147 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_147 + 32] = uint256(stor24[idx].field_0)
                                    s = _147 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _147 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_147 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_147 + 32] = uint256(stor24[idx].field_0)
                                    s = _147 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _147 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _147
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _126 = mem[64]
                mem[mem[64]] = 32
                _130 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                u = mem[64] + (32 * mem[96]) + 64
                while idx < _130:
                    mem[t] = u + -_126 - 64
                    _230 = mem[s]
                    _237 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _237:
                        mem[v + u + 32] = mem[v + _230 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_237) > _237:
                        mem[_237 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_237) + u + 32
                    continue 
            else:
                mem[128] = 96
                s = 128
                idx = arg2 + -arg1 + 1
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                idx = arg1
                while idx <= arg2:
                    mem[0] = idx
                    mem[32] = 24
                    if bool(stor24[idx].field_0):
                        if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                            revert with 0, 34
                        _254 = mem[64]
                        mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                        mem[_254] = uint255(uint256(stor24[idx].field_0)) * 0.5
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_254 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_254 + 32] = uint256(stor24[idx].field_0)
                                    s = _254 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _254 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_254 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_254 + 32] = uint256(stor24[idx].field_0)
                                    s = _254 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _254 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _254
                    else:
                        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                            revert with 0, 34
                        _260 = mem[64]
                        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
                        mem[_260] = stor24[idx].field_1 % 128
                        if bool(stor24[idx].field_0):
                            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, uint256(stor24[idx].field_0)):
                                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                                    mem[_260 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_260 + 32] = uint256(stor24[idx].field_0)
                                    s = _260 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _260 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        else:
                            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                                revert with 0, 34
                            if stor24[idx].field_1 % 128:
                                if 31 >= stor24[idx].field_1 % 128:
                                    mem[_260 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                                else:
                                    mem[0] = sha3(idx, 24)
                                    mem[_260 + 32] = uint256(stor24[idx].field_0)
                                    s = _260 + 32
                                    t = sha3(sha3(idx, 24))
                                    while _260 + stor24[idx].field_1 % 128 > s:
                                        mem[s + 32] = uint256(stor1[t].field_0)
                                        s = s + 32
                                        t = t + 1
                                        continue 
                        if idx < arg1:
                            revert with 0, 17
                        if idx - arg1 >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx - arg1) + 128] = _260
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _238 = mem[64]
                mem[mem[64]] = 32
                _240 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 64
                u = mem[64] + (32 * mem[96]) + 64
                while idx < _240:
                    mem[t] = u + -_238 - 64
                    _298 = mem[s]
                    _302 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    v = 0
                    while v < _302:
                        mem[v + u + 32] = mem[v + _298 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_302) > _302:
                        mem[_302 + u + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    u = ceil32(_302) + u + 32
                    continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_2ebee207(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[0] = msg.sender
    mem[32] = 22
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if mem[(32 * idx) + 128] != 0:
            if idx >= mem[96]:
                revert with 0, 50
            _1274 = mem[(32 * idx) + 128]
            if not stor22[msg.sender]:
                revert with 0, 'Not allowed'
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 24
            _1276 = sha3(mem[(32 * idx) + 128], 24)
            _1277 = mem[64]
            mem[64] = mem[64] + 288
            if bool(stor24[mem[(32 * idx) + 128]].field_0):
                if bool(stor24[mem[(32 * idx) + 128]].field_0) == uint255(uint256(stor24[mem[(32 * idx) + 128]].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1280 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor24[mem[(32 * idx) + 128]].field_0)) * 0.5) + 32
                mem[_1280] = uint255(uint256(stor24[mem[(32 * idx) + 128]].field_0)) * 0.5
                if bool(stor[_1276].field_0):
                    if bool(stor[_1276].field_0) == uint255(uint256(stor[_1276].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_1276].field_0)):
                        mem[_1277] = _1280
                        mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                        mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                        mem[_1277 + 96] = uint256(ownerOf[_1276])
                        mem[_1277 + 128] = balanceOf[_1276]
                        mem[_1277 + 160] = uint256(approved[_1276])
                        mem[_1277 + 192] = uint256(stor6[_1276])
                        if uint8(stor7[_1276].field_0) > 5:
                            revert with 0, 33
                        mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        if uint8(stor7[_1276].field_8) == 4:
                            if block.timestamp < uint256(ownerOf[_1276]):
                                revert with 0, 17
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 5:
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1650 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1650] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1650] / 10000):
                                    revert with 0, 17
                            else:
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1651] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1651] / 10000):
                                    revert with 0, 17
                        else:
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) != 5:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1706 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1706] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1706] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1707 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1707] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1707] / 10000):
                                        revert with 0, 17
                            else:
                                mem[0] = _1274
                                mem[32] = 23
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1704 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1704] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1704] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1705 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1705] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1705] / 10000):
                                        revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(stor[_1276].field_0)) * 0.5:
                            mem[_1280 + 32] = 256 * Mask(248, 0, stor[_1276].field_8)
                            mem[_1277] = _1280
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1710 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1710] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1710] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1711 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1711] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1711] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1778 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1778] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1778] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1779 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1779] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1779] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1776 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1776] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1776] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1777 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1777] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1777] / 10000):
                                            revert with 0, 17
                        else:
                            mem[0] = _1276
                            mem[_1280 + 32] = uint256(stor[sha3(_1276)].field_0)
                            s = _1280 + 32
                            t = sha3(_1276)
                            while _1280 + (uint255(uint256(stor[_1276].field_0)) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1277] = _1280
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2038 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2038] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2038] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2039 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2039] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2039] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2066 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2066] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2066] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2067 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2067] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2067] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2064 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2064] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2064] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2065] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2065] / 10000):
                                            revert with 0, 17
                else:
                    if bool(stor[_1276].field_0) == stor[_1276].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_1276].field_1 % 128:
                        mem[_1277] = _1280
                        mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                        mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                        mem[_1277 + 96] = uint256(ownerOf[_1276])
                        mem[_1277 + 128] = balanceOf[_1276]
                        mem[_1277 + 160] = uint256(approved[_1276])
                        mem[_1277 + 192] = uint256(stor6[_1276])
                        if uint8(stor7[_1276].field_0) > 5:
                            revert with 0, 33
                        mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        if uint8(stor7[_1276].field_8) == 4:
                            if block.timestamp < uint256(ownerOf[_1276]):
                                revert with 0, 17
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 5:
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1680 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1680] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1680] / 10000):
                                    revert with 0, 17
                            else:
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1681] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1681] / 10000):
                                    revert with 0, 17
                        else:
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) != 5:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1736 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1736] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1736] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1737 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1737] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1737] / 10000):
                                        revert with 0, 17
                            else:
                                mem[0] = _1274
                                mem[32] = 23
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1734 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1734] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1734] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1735] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1735] / 10000):
                                        revert with 0, 17
                    else:
                        if 31 >= stor[_1276].field_1 % 128:
                            mem[_1280 + 32] = 256 * Mask(248, 0, stor[_1276].field_8)
                            mem[_1277] = _1280
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1740 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1740] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1740] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1741 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1741] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1741] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1808 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1808] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1808] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1809 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1809] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1809] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1806 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1806] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1806] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1807 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1807] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1807] / 10000):
                                            revert with 0, 17
                        else:
                            mem[0] = _1276
                            mem[_1280 + 32] = uint256(stor[sha3(_1276)].field_0)
                            s = _1280 + 32
                            t = sha3(_1276)
                            while _1280 + stor[_1276].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1277] = _1280
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2044 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2044] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2044] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2045 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2045] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2045] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2072 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2072] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2072] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2073 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2073] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2073] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2070 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2070] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2070] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2071 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2071] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2071] / 10000):
                                            revert with 0, 17
            else:
                if bool(stor24[mem[(32 * idx) + 128]].field_0) == stor24[mem[(32 * idx) + 128]].field_1 % 128 < 32:
                    revert with 0, 34
                _1281 = mem[64]
                mem[64] = mem[64] + ceil32(stor24[mem[(32 * idx) + 128]].field_1 % 128) + 32
                mem[_1281] = stor24[mem[(32 * idx) + 128]].field_1 % 128
                if bool(stor[_1276].field_0):
                    if bool(stor[_1276].field_0) == uint255(uint256(stor[_1276].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor[_1276].field_0)):
                        mem[_1277] = _1281
                        mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                        mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                        mem[_1277 + 96] = uint256(ownerOf[_1276])
                        mem[_1277 + 128] = balanceOf[_1276]
                        mem[_1277 + 160] = uint256(approved[_1276])
                        mem[_1277 + 192] = uint256(stor6[_1276])
                        if uint8(stor7[_1276].field_0) > 5:
                            revert with 0, 33
                        mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        if uint8(stor7[_1276].field_8) == 4:
                            if block.timestamp < uint256(ownerOf[_1276]):
                                revert with 0, 17
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 5:
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1688 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1688] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1688] / 10000):
                                    revert with 0, 17
                            else:
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1689] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1689] / 10000):
                                    revert with 0, 17
                        else:
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) != 5:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1750 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1750] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1750] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1751 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1751] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1751] / 10000):
                                        revert with 0, 17
                            else:
                                mem[0] = _1274
                                mem[32] = 23
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1748 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1748] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1748] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1749 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1749] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1749] / 10000):
                                        revert with 0, 17
                    else:
                        if 31 >= uint255(uint256(stor[_1276].field_0)) * 0.5:
                            mem[_1281 + 32] = 256 * Mask(248, 0, stor[_1276].field_8)
                            mem[_1277] = _1281
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1754 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1754] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1754] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1755 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1755] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1755] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1824 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1824] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1824] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1825 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1825] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1825] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1822 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1822] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1822] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1823 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1823] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1823] / 10000):
                                            revert with 0, 17
                        else:
                            mem[0] = _1276
                            mem[_1281 + 32] = uint256(stor[sha3(_1276)].field_0)
                            s = _1281 + 32
                            t = sha3(_1276)
                            while _1281 + (uint255(uint256(stor[_1276].field_0)) * 0.5) > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1277] = _1281
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2050 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2050] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2050] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2051 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2051] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2051] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2078 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2078] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2078] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2079 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2079] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2079] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2076 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2076] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2076] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2077 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2077] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2077] / 10000):
                                            revert with 0, 17
                else:
                    if bool(stor[_1276].field_0) == stor[_1276].field_1 % 128 < 32:
                        revert with 0, 34
                    if not stor[_1276].field_1 % 128:
                        mem[_1277] = _1281
                        mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                        mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                        mem[_1277 + 96] = uint256(ownerOf[_1276])
                        mem[_1277 + 128] = balanceOf[_1276]
                        mem[_1277 + 160] = uint256(approved[_1276])
                        mem[_1277 + 192] = uint256(stor6[_1276])
                        if uint8(stor7[_1276].field_0) > 5:
                            revert with 0, 33
                        mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                        if uint8(stor7[_1276].field_8) > 5:
                            revert with 0, 33
                        if uint8(stor7[_1276].field_8) == 4:
                            if block.timestamp < uint256(ownerOf[_1276]):
                                revert with 0, 17
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 5:
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                    revert with 0, 17
                                if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1724 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1724] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1724] / 10000):
                                    revert with 0, 17
                            else:
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                    revert with 0, 17
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                    revert with 0, 17
                                if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = _1274
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args _1274, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1725 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1725] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1725] / 10000):
                                    revert with 0, 17
                        else:
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) != 5:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1784 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1784] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1784] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1785 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1785] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1785] / 10000):
                                        revert with 0, 17
                            else:
                                mem[0] = _1274
                                mem[32] = 23
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1782 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1782] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1782] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1783 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1783] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1783] / 10000):
                                        revert with 0, 17
                    else:
                        if 31 >= stor[_1276].field_1 % 128:
                            mem[_1281 + 32] = 256 * Mask(248, 0, stor[_1276].field_8)
                            mem[_1277] = _1281
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1788 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1788] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1788] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1789 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1789] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1789] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1850 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1850] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1850] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1851 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1851] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1851] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1848 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1848] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1848] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1849 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_1849] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_1849] / 10000):
                                            revert with 0, 17
                        else:
                            mem[0] = _1276
                            mem[_1281 + 32] = uint256(stor[sha3(_1276)].field_0)
                            s = _1281 + 32
                            t = sha3(_1276)
                            while _1281 + stor[_1276].field_1 % 128 > s:
                                mem[s + 32] = uint256(stor1[t].field_0)
                                s = s + 32
                                t = t + 1
                                continue 
                            mem[_1277] = _1281
                            mem[_1277 + 32] = uint256(stor1[_1276].field_0)
                            mem[_1277 + 64] = uint256(stor2[_1276].field_0)
                            mem[_1277 + 96] = uint256(ownerOf[_1276])
                            mem[_1277 + 128] = balanceOf[_1276]
                            mem[_1277 + 160] = uint256(approved[_1276])
                            mem[_1277 + 192] = uint256(stor6[_1276])
                            if uint8(stor7[_1276].field_0) > 5:
                                revert with 0, 33
                            mem[_1277 + 224] = uint8(stor7[_1276].field_0)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            mem[_1277 + 256] = uint8(stor7[_1276].field_8)
                            if uint8(stor7[_1276].field_8) > 5:
                                revert with 0, 33
                            if uint8(stor7[_1276].field_8) == 4:
                                if block.timestamp < uint256(ownerOf[_1276]):
                                    revert with 0, 17
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) == 5:
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) and sub_7e953ee7 > -1 / uint256(approved[_1276]):
                                        revert with 0, 17
                                    if uint256(approved[_1276]) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2056 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2056] > -1 / uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(approved[_1276]) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2056] / 10000):
                                        revert with 0, 17
                                else:
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) and sub_7e953ee7 > -1 / uint256(stor2[_1276].field_0):
                                        revert with 0, 17
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7:
                                        revert with 0, 17
                                    if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_7e953ee7) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_7e953ee7) / 10000 / 24 * 3600):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = _1274
                                    mem[mem[64] + 36] = 1
                                    require ext_code.size(stor21)
                                    staticcall stor21.0x9a2754f4 with:
                                            gas gas_remaining wei
                                           args _1274, 1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2057 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2057] > -1 / uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                        revert with 0, 17
                                    if 0 > !(uint256(stor2[_1276].field_0) * sub_7e953ee7 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2057] / 10000):
                                        revert with 0, 17
                            else:
                                if uint8(stor7[_1276].field_8) > 5:
                                    revert with 0, 33
                                if uint8(stor7[_1276].field_8) != 5:
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and sub_f5597032 > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2084 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2084] > -1 / uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2084] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and sub_f5597032 > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * sub_f5597032:
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * sub_f5597032) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * sub_f5597032) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2085 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2085] > -1 / uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * sub_f5597032 * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2085] / 10000):
                                            revert with 0, 17
                                else:
                                    mem[0] = _1274
                                    mem[32] = 23
                                    if block.timestamp < uint256(ownerOf[_1276]):
                                        revert with 0, 17
                                    if uint8(stor7[_1276].field_8) > 5:
                                        revert with 0, 33
                                    if uint8(stor7[_1276].field_8) == 5:
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(approved[_1276]):
                                            revert with 0, 17
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2082 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2082] > -1 / uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(approved[_1276]) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2082] / 10000):
                                            revert with 0, 17
                                    else:
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if block.timestamp < uint256(ownerOf[_1276]):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) and uint256(sub_ded2abc3[_1274].field_0) > -1 / uint256(stor2[_1276].field_0):
                                            revert with 0, 17
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) and block.timestamp - uint256(ownerOf[_1276]) > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0):
                                            revert with 0, 17
                                        if balanceOf[_1276] > !((block.timestamp * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) - (uint256(ownerOf[_1276]) * uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0)) / 10000 / 24 * 3600):
                                            revert with 0, 17
                                        mem[mem[64] + 4] = _1274
                                        mem[mem[64] + 36] = 1
                                        require ext_code.size(stor21)
                                        staticcall stor21.0x9a2754f4 with:
                                                gas gas_remaining wei
                                               args _1274, 1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2083 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 and mem[_2083] > -1 / uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000:
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000):
                                            revert with 0, 17
                                        if 0 > !(uint256(stor2[_1276].field_0) * uint256(sub_ded2abc3[_1274].field_0) * block.timestamp - uint256(ownerOf[_1276]) / 24 * 3600 / 10000 * mem[_2083] / 10000):
                                            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_8c46d91b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 < 6
    require arg3 == bool(arg3)
    if not stor22[msg.sender]:
        revert with 0, 'Not allowed'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[0] = address(arg1)
    mem[32] = 4
    if not balanceOf[address(arg1)]:
        return 0
    idx = 1
    s = 0
    t = 0
    while idx <= currentTokenId:
        mem[0] = idx
        mem[32] = 3
        if address(ownerOf[idx]) != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = idx
        mem[32] = 24
        if uint256(stor24[idx].field_768) > !sub_fb0ecf68:
            revert with 0, 17
        if uint256(stor24[idx].field_768) + sub_fb0ecf68 > block.timestamp:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if not arg3:
            if not stor22[msg.sender]:
                revert with 0, 'Not allowed'
            mem[0] = idx
            mem[32] = 24
            _1267 = mem[64]
            mem[64] = mem[64] + 288
            if bool(stor24[idx].field_0):
                if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                _1274 = mem[64]
                mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
                mem[_1274] = uint255(uint256(stor24[idx].field_0)) * 0.5
                if bool(stor24[idx].field_0):
                    if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, uint256(stor24[idx].field_0)):
                        mem[_1267] = _1274
                        mem[_1267 + 32] = uint256(stor24[idx].field_256)
                        mem[_1267 + 64] = uint256(stor24[idx].field_512)
                        mem[_1267 + 96] = uint256(stor24[idx].field_768)
                        mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                        mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                        mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                        if uint8(stor24[idx].field_1792) > 5:
                            revert with 0, 33
                        mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 4:
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint8(stor24[idx].field_1800) > 5:
                                revert with 0, 33
                            if uint8(stor24[idx].field_1800) == 5:
                                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(stor24[idx].field_768):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = idx
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args idx, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1947 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_1947] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1947] / 10000):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1947] / 10000)
                                t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                                continue 
                            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_1948] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1948] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1948] / 10000)
                            t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) != 5:
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint8(stor24[idx].field_1800) > 5:
                                revert with 0, 33
                            if uint8(stor24[idx].field_1800) == 5:
                                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                    revert with 0, 17
                                if block.timestamp < uint256(stor24[idx].field_768):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = idx
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args idx, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2047 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2047] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2047] / 10000):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2047] / 10000)
                                t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                                continue 
                            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2048 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2048] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2048] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2048] / 10000)
                            t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        mem[0] = idx
                        mem[32] = 23
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2045 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2045] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2045] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2045] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2046] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2046] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2046] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                        mem[_1274 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                        mem[_1267] = _1274
                        mem[_1267 + 32] = uint256(stor24[idx].field_256)
                        mem[_1267 + 64] = uint256(stor24[idx].field_512)
                        mem[_1267 + 96] = uint256(stor24[idx].field_768)
                        mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                        mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                        mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                        if uint8(stor24[idx].field_1792) > 5:
                            revert with 0, 33
                        mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 4:
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint8(stor24[idx].field_1800) > 5:
                                revert with 0, 33
                            if uint8(stor24[idx].field_1800) == 5:
                                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                    revert with 0, 17
                                if block.timestamp < uint256(stor24[idx].field_768):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = idx
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args idx, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2051] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2051] / 10000):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2051] / 10000)
                                t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                                continue 
                            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2052 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2052] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2052] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2052] / 10000)
                            t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) != 5:
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint8(stor24[idx].field_1800) > 5:
                                revert with 0, 33
                            if uint8(stor24[idx].field_1800) == 5:
                                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                    revert with 0, 17
                                if block.timestamp < uint256(stor24[idx].field_768):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                    revert with 0, 17
                                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                    revert with 0, 17
                                mem[mem[64] + 4] = idx
                                mem[mem[64] + 36] = 1
                                require ext_code.size(stor21)
                                staticcall stor21.0x9a2754f4 with:
                                        gas gas_remaining wei
                                       args idx, 1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2169 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2169] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                    revert with 0, 17
                                if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                    revert with 0, 17
                                if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2169] / 10000):
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2169] / 10000)
                                t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                                continue 
                            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                                revert with 0, 17
                            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2170 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2170] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2170] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2170] / 10000)
                            t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        mem[0] = idx
                        mem[32] = 23
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2167 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2167] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2167] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2167] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2168 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2168] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2168] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2168] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = sha3(idx, 24)
                    mem[_1274 + 32] = uint256(stor24[idx].field_0)
                    u = _1274 + 32
                    v = sha3(sha3(idx, 24))
                    while _1274 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > u:
                        mem[u + 32] = uint256(stor1[v].field_0)
                        u = u + 32
                        v = v + 1
                        continue 
                    mem[_1267] = _1274
                    mem[_1267 + 32] = uint256(stor24[idx].field_256)
                    mem[_1267 + 64] = uint256(stor24[idx].field_512)
                    mem[_1267 + 96] = uint256(stor24[idx].field_768)
                    mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2791 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2791] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2791] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2791] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2792 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2792] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2792] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2792] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2843 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2843] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2843] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2843] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2844 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2844] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2844] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2844] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2841 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2841] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2841] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2841] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2842 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2842] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2842] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2842] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                    revert with 0, 34
                if not stor24[idx].field_1 % 128:
                    mem[_1267] = _1274
                    mem[_1267 + 32] = uint256(stor24[idx].field_256)
                    mem[_1267 + 64] = uint256(stor24[idx].field_512)
                    mem[_1267 + 96] = uint256(stor24[idx].field_768)
                    mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1997 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_1997] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1997] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1997] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1998 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_1998] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1998] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_1998] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2101 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2101] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2101] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2101] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2102] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2102] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2102] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2099 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2099] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2099] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2099] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2100 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2100] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2100] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2100] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if 31 >= stor24[idx].field_1 % 128:
                    mem[_1274 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                    mem[_1267] = _1274
                    mem[_1267 + 32] = uint256(stor24[idx].field_256)
                    mem[_1267 + 64] = uint256(stor24[idx].field_512)
                    mem[_1267 + 96] = uint256(stor24[idx].field_768)
                    mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2105 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2105] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2105] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2105] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2106] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2106] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2106] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2225 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2225] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2225] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2225] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2226] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2226] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2226] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2223 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2223] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2223] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2223] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2224] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2224] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2224] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = sha3(idx, 24)
                mem[_1274 + 32] = uint256(stor24[idx].field_0)
                u = _1274 + 32
                v = sha3(sha3(idx, 24))
                while _1274 + stor24[idx].field_1 % 128 > u:
                    mem[u + 32] = uint256(stor1[v].field_0)
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_1267] = _1274
                mem[_1267 + 32] = uint256(stor24[idx].field_256)
                mem[_1267 + 64] = uint256(stor24[idx].field_512)
                mem[_1267 + 96] = uint256(stor24[idx].field_768)
                mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2797] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2797] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2797] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2798] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2798] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2798] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2849] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2849] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2849] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2850 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2850] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2850] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2850] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2847] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2847] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2847] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2848 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2848] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2848] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2848] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                revert with 0, 34
            _1275 = mem[64]
            mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
            mem[_1275] = stor24[idx].field_1 % 128
            if bool(stor24[idx].field_0):
                if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor24[idx].field_0)):
                    mem[_1267] = _1275
                    mem[_1267 + 32] = uint256(stor24[idx].field_256)
                    mem[_1267 + 64] = uint256(stor24[idx].field_512)
                    mem[_1267 + 96] = uint256(stor24[idx].field_768)
                    mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2005 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2005] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2005] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2005] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2006 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2006] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2006] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2006] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2115 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2115] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2115] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2115] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2116 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2116] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2116] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2116] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2113 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2113] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2113] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2113] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2114 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2114] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2114] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2114] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                    mem[_1275 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                    mem[_1267] = _1275
                    mem[_1267 + 32] = uint256(stor24[idx].field_256)
                    mem[_1267 + 64] = uint256(stor24[idx].field_512)
                    mem[_1267 + 96] = uint256(stor24[idx].field_768)
                    mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2119 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2119] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2119] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2119] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2120 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2120] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2120] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2120] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2241 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2241] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2241] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2241] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2242] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2242] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2242] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2239] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2239] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2239] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2240] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2240] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2240] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = sha3(idx, 24)
                mem[_1275 + 32] = uint256(stor24[idx].field_0)
                u = _1275 + 32
                v = sha3(sha3(idx, 24))
                while _1275 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > u:
                    mem[u + 32] = uint256(stor1[v].field_0)
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_1267] = _1275
                mem[_1267 + 32] = uint256(stor24[idx].field_256)
                mem[_1267 + 64] = uint256(stor24[idx].field_512)
                mem[_1267 + 96] = uint256(stor24[idx].field_768)
                mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2803 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2803] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2803] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2803] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2804 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2804] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2804] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2804] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2855] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2855] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2855] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2856 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2856] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2856] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2856] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2853 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2853] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2853] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2853] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2854] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2854] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2854] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor24[idx].field_1 % 128:
                mem[_1267] = _1275
                mem[_1267 + 32] = uint256(stor24[idx].field_256)
                mem[_1267 + 64] = uint256(stor24[idx].field_512)
                mem[_1267 + 96] = uint256(stor24[idx].field_768)
                mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2065 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2065] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2065] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2065] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2066 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2066] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2066] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2066] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2175] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2175] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2175] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2176] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2176] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2176] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2173] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2173] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2173] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2174] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2174] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2174] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if 31 >= stor24[idx].field_1 % 128:
                mem[_1275 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                mem[_1267] = _1275
                mem[_1267 + 32] = uint256(stor24[idx].field_256)
                mem[_1267 + 64] = uint256(stor24[idx].field_512)
                mem[_1267 + 96] = uint256(stor24[idx].field_768)
                mem[_1267 + 128] = uint256(stor24[idx].field_1024)
                mem[_1267 + 160] = uint256(stor24[idx].field_1280)
                mem[_1267 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1267 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1267 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2179 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2179] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2179] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2179] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2180 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2180] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2180] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2180] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2297] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2297] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2297] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2298 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2298] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2298] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2298] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2295] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2295] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2295] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2296 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2296] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2296] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2296] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = sha3(idx, 24)
            mem[_1275 + 32] = uint256(stor24[idx].field_0)
            u = _1275 + 32
            v = sha3(sha3(idx, 24))
            while _1275 + stor24[idx].field_1 % 128 > u:
                mem[u + 32] = uint256(stor1[v].field_0)
                u = u + 32
                v = v + 1
                continue 
            mem[_1267] = _1275
            mem[_1267 + 32] = uint256(stor24[idx].field_256)
            mem[_1267 + 64] = uint256(stor24[idx].field_512)
            mem[_1267 + 96] = uint256(stor24[idx].field_768)
            mem[_1267 + 128] = uint256(stor24[idx].field_1024)
            mem[_1267 + 160] = uint256(stor24[idx].field_1280)
            mem[_1267 + 192] = uint256(stor24[idx].field_1536)
            if uint8(stor24[idx].field_1792) > 5:
                revert with 0, 33
            mem[_1267 + 224] = uint8(stor24[idx].field_1792)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            mem[_1267 + 256] = uint8(stor24[idx].field_1800)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 4:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2809 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2809] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2809] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2809] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2810 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2810] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2810] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2810] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) != 5:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2861] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2861] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2861] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2862 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2862] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2862] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2862] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = idx
            mem[32] = 23
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2859] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2859] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2859] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2860 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2860] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2860] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2860] / 10000)
            t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if arg2 > 5:
            revert with 0, 33
        mem[0] = idx
        mem[32] = 24
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[idx].field_1800) != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if not stor22[msg.sender]:
            revert with 0, 'Not allowed'
        mem[0] = idx
        mem[32] = 24
        _1272 = mem[64]
        mem[64] = mem[64] + 288
        if bool(stor24[idx].field_0):
            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            _1277 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(uint256(stor24[idx].field_0)) * 0.5) + 32
            mem[_1277] = uint255(uint256(stor24[idx].field_0)) * 0.5
            if bool(stor24[idx].field_0):
                if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, uint256(stor24[idx].field_0)):
                    mem[_1272] = _1277
                    mem[_1272 + 32] = uint256(stor24[idx].field_256)
                    mem[_1272 + 64] = uint256(stor24[idx].field_512)
                    mem[_1272 + 96] = uint256(stor24[idx].field_768)
                    mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2129 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2129] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2129] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2129] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2130 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2130] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2130] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2130] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2247 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2247] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2247] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2247] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2248] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2248] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2248] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2245 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2245] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2245] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2245] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2246] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2246] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2246] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                    mem[_1277 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                    mem[_1272] = _1277
                    mem[_1272 + 32] = uint256(stor24[idx].field_256)
                    mem[_1272 + 64] = uint256(stor24[idx].field_512)
                    mem[_1272 + 96] = uint256(stor24[idx].field_768)
                    mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                    mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                    mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                    if uint8(stor24[idx].field_1792) > 5:
                        revert with 0, 33
                    mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 4:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2251] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2251] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2251] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2252] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2252] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2252] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) != 5:
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint8(stor24[idx].field_1800) > 5:
                            revert with 0, 33
                        if uint8(stor24[idx].field_1800) == 5:
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if block.timestamp < uint256(stor24[idx].field_768):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                                revert with 0, 17
                            if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                                revert with 0, 17
                            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                                revert with 0, 17
                            mem[mem[64] + 4] = idx
                            mem[mem[64] + 36] = 1
                            require ext_code.size(stor21)
                            staticcall stor21.0x9a2754f4 with:
                                    gas gas_remaining wei
                                   args idx, 1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2365 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2365] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                                revert with 0, 17
                            if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                                revert with 0, 17
                            if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2365] / 10000):
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2365] / 10000)
                            t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                            continue 
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                            revert with 0, 17
                        if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2366 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2366] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2366] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2366] / 10000)
                        t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    mem[0] = idx
                    mem[32] = 23
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2363 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2363] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2363] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2363] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2364 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2364] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2364] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2364] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = sha3(idx, 24)
                mem[_1277 + 32] = uint256(stor24[idx].field_0)
                u = _1277 + 32
                v = sha3(sha3(idx, 24))
                while _1277 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > u:
                    mem[u + 32] = uint256(stor1[v].field_0)
                    u = u + 32
                    v = v + 1
                    continue 
                mem[_1272] = _1277
                mem[_1272 + 32] = uint256(stor24[idx].field_256)
                mem[_1272 + 64] = uint256(stor24[idx].field_512)
                mem[_1272 + 96] = uint256(stor24[idx].field_768)
                mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2815 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2815] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2815] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2815] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2816 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2816] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2816] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2816] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2867 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2867] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2867] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2867] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2868] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2868] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2868] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2865] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2865] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2865] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2866 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2866] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2866] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2866] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
                revert with 0, 34
            if not stor24[idx].field_1 % 128:
                mem[_1272] = _1277
                mem[_1272 + 32] = uint256(stor24[idx].field_256)
                mem[_1272 + 64] = uint256(stor24[idx].field_512)
                mem[_1272 + 96] = uint256(stor24[idx].field_768)
                mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2189 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2189] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2189] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2189] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2190] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2190] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2190] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2303 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2303] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2303] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2303] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2304] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2304] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2304] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2301] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2301] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2301] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2302 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2302] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2302] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2302] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if 31 >= stor24[idx].field_1 % 128:
                mem[_1277 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                mem[_1272] = _1277
                mem[_1272 + 32] = uint256(stor24[idx].field_256)
                mem[_1272 + 64] = uint256(stor24[idx].field_512)
                mem[_1272 + 96] = uint256(stor24[idx].field_768)
                mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2307] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2307] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2307] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2308] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2308] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2308] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2409] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2409] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2409] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2410] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2410] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2410] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2407 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2407] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2407] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2407] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2408 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2408] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2408] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2408] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = sha3(idx, 24)
            mem[_1277 + 32] = uint256(stor24[idx].field_0)
            u = _1277 + 32
            v = sha3(sha3(idx, 24))
            while _1277 + stor24[idx].field_1 % 128 > u:
                mem[u + 32] = uint256(stor1[v].field_0)
                u = u + 32
                v = v + 1
                continue 
            mem[_1272] = _1277
            mem[_1272 + 32] = uint256(stor24[idx].field_256)
            mem[_1272 + 64] = uint256(stor24[idx].field_512)
            mem[_1272 + 96] = uint256(stor24[idx].field_768)
            mem[_1272 + 128] = uint256(stor24[idx].field_1024)
            mem[_1272 + 160] = uint256(stor24[idx].field_1280)
            mem[_1272 + 192] = uint256(stor24[idx].field_1536)
            if uint8(stor24[idx].field_1792) > 5:
                revert with 0, 33
            mem[_1272 + 224] = uint8(stor24[idx].field_1792)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            mem[_1272 + 256] = uint8(stor24[idx].field_1800)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 4:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2821 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2821] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2821] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2821] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2822] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2822] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2822] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) != 5:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2873] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2873] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2873] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2874] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2874] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2874] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = idx
            mem[32] = 23
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2871 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2871] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2871] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2871] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2872] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2872] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2872] / 10000)
            t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
            revert with 0, 34
        _1278 = mem[64]
        mem[64] = mem[64] + ceil32(stor24[idx].field_1 % 128) + 32
        mem[_1278] = stor24[idx].field_1 % 128
        if bool(stor24[idx].field_0):
            if bool(stor24[idx].field_0) == uint255(uint256(stor24[idx].field_0)) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, uint256(stor24[idx].field_0)):
                mem[_1272] = _1278
                mem[_1272 + 32] = uint256(stor24[idx].field_256)
                mem[_1272 + 64] = uint256(stor24[idx].field_512)
                mem[_1272 + 96] = uint256(stor24[idx].field_768)
                mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2197 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2197] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2197] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2197] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2198] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2198] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2198] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2317 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2317] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2317] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2317] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2318 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2318] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2318] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2318] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2315] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2315] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2315] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2316] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2316] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2316] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if 31 >= uint255(uint256(stor24[idx].field_0)) * 0.5:
                mem[_1278 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
                mem[_1272] = _1278
                mem[_1272 + 32] = uint256(stor24[idx].field_256)
                mem[_1272 + 64] = uint256(stor24[idx].field_512)
                mem[_1272 + 96] = uint256(stor24[idx].field_768)
                mem[_1272 + 128] = uint256(stor24[idx].field_1024)
                mem[_1272 + 160] = uint256(stor24[idx].field_1280)
                mem[_1272 + 192] = uint256(stor24[idx].field_1536)
                if uint8(stor24[idx].field_1792) > 5:
                    revert with 0, 33
                mem[_1272 + 224] = uint8(stor24[idx].field_1792)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                mem[_1272 + 256] = uint8(stor24[idx].field_1800)
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 4:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2321 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2321] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2321] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2321] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2322] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2322] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2322] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) != 5:
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint8(stor24[idx].field_1800) > 5:
                        revert with 0, 33
                    if uint8(stor24[idx].field_1800) == 5:
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if block.timestamp < uint256(stor24[idx].field_768):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                            revert with 0, 17
                        if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                            revert with 0, 17
                        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                            revert with 0, 17
                        mem[mem[64] + 4] = idx
                        mem[mem[64] + 36] = 1
                        require ext_code.size(stor21)
                        staticcall stor21.0x9a2754f4 with:
                                gas gas_remaining wei
                               args idx, 1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2425] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                            revert with 0, 17
                        if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                            revert with 0, 17
                        if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2425] / 10000):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2425] / 10000)
                        t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                        continue 
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                        revert with 0, 17
                    if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2426] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2426] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2426] / 10000)
                    t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                mem[0] = idx
                mem[32] = 23
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2423] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2423] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2423] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2424] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2424] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2424] / 10000)
                t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = sha3(idx, 24)
            mem[_1278 + 32] = uint256(stor24[idx].field_0)
            u = _1278 + 32
            v = sha3(sha3(idx, 24))
            while _1278 + (uint255(uint256(stor24[idx].field_0)) * 0.5) > u:
                mem[u + 32] = uint256(stor1[v].field_0)
                u = u + 32
                v = v + 1
                continue 
            mem[_1272] = _1278
            mem[_1272 + 32] = uint256(stor24[idx].field_256)
            mem[_1272 + 64] = uint256(stor24[idx].field_512)
            mem[_1272 + 96] = uint256(stor24[idx].field_768)
            mem[_1272 + 128] = uint256(stor24[idx].field_1024)
            mem[_1272 + 160] = uint256(stor24[idx].field_1280)
            mem[_1272 + 192] = uint256(stor24[idx].field_1536)
            if uint8(stor24[idx].field_1792) > 5:
                revert with 0, 33
            mem[_1272 + 224] = uint8(stor24[idx].field_1792)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            mem[_1272 + 256] = uint8(stor24[idx].field_1800)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 4:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2827 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2827] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2827] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2827] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2828 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2828] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2828] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2828] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) != 5:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2879 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2879] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2879] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2879] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2880 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2880] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2880] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2880] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = idx
            mem[32] = 23
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2877] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2877] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2877] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2878 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2878] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2878] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2878] / 10000)
            t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if bool(stor24[idx].field_0) == stor24[idx].field_1 % 128 < 32:
            revert with 0, 34
        if not stor24[idx].field_1 % 128:
            mem[_1272] = _1278
            mem[_1272 + 32] = uint256(stor24[idx].field_256)
            mem[_1272 + 64] = uint256(stor24[idx].field_512)
            mem[_1272 + 96] = uint256(stor24[idx].field_768)
            mem[_1272 + 128] = uint256(stor24[idx].field_1024)
            mem[_1272 + 160] = uint256(stor24[idx].field_1280)
            mem[_1272 + 192] = uint256(stor24[idx].field_1536)
            if uint8(stor24[idx].field_1792) > 5:
                revert with 0, 33
            mem[_1272 + 224] = uint8(stor24[idx].field_1792)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            mem[_1272 + 256] = uint8(stor24[idx].field_1800)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 4:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2265] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2265] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2265] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2266] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2266] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2266] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) != 5:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2371] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2371] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2371] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2372 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2372] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2372] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2372] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = idx
            mem[32] = 23
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2369 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2369] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2369] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2369] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2370] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2370] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2370] / 10000)
            t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if 31 >= stor24[idx].field_1 % 128:
            mem[_1278 + 32] = 256 * Mask(248, 0, stor24[idx].field_8)
            mem[_1272] = _1278
            mem[_1272 + 32] = uint256(stor24[idx].field_256)
            mem[_1272 + 64] = uint256(stor24[idx].field_512)
            mem[_1272 + 96] = uint256(stor24[idx].field_768)
            mem[_1272 + 128] = uint256(stor24[idx].field_1024)
            mem[_1272 + 160] = uint256(stor24[idx].field_1280)
            mem[_1272 + 192] = uint256(stor24[idx].field_1536)
            if uint8(stor24[idx].field_1792) > 5:
                revert with 0, 33
            mem[_1272 + 224] = uint8(stor24[idx].field_1792)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            mem[_1272 + 256] = uint8(stor24[idx].field_1800)
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 4:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2375 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2375] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2375] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2375] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2376 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2376] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2376] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2376] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) != 5:
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint8(stor24[idx].field_1800) > 5:
                    revert with 0, 33
                if uint8(stor24[idx].field_1800) == 5:
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if block.timestamp < uint256(stor24[idx].field_768):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                        revert with 0, 17
                    if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                        revert with 0, 17
                    if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                        revert with 0, 17
                    mem[mem[64] + 4] = idx
                    mem[mem[64] + 36] = 1
                    require ext_code.size(stor21)
                    staticcall stor21.0x9a2754f4 with:
                            gas gas_remaining wei
                           args idx, 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2459 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2459] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                        revert with 0, 17
                    if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                        revert with 0, 17
                    if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2459] / 10000):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2459] / 10000)
                    t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                    continue 
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                    revert with 0, 17
                if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2460 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2460] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2460] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2460] / 10000)
                t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            mem[0] = idx
            mem[32] = 23
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2457] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2457] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2457] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2458 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2458] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2458] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2458] / 10000)
            t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        mem[0] = sha3(idx, 24)
        mem[_1278 + 32] = uint256(stor24[idx].field_0)
        u = _1278 + 32
        v = sha3(sha3(idx, 24))
        while _1278 + stor24[idx].field_1 % 128 > u:
            mem[u + 32] = uint256(stor1[v].field_0)
            u = u + 32
            v = v + 1
            continue 
        mem[_1272] = _1278
        mem[_1272 + 32] = uint256(stor24[idx].field_256)
        mem[_1272 + 64] = uint256(stor24[idx].field_512)
        mem[_1272 + 96] = uint256(stor24[idx].field_768)
        mem[_1272 + 128] = uint256(stor24[idx].field_1024)
        mem[_1272 + 160] = uint256(stor24[idx].field_1280)
        mem[_1272 + 192] = uint256(stor24[idx].field_1536)
        if uint8(stor24[idx].field_1792) > 5:
            revert with 0, 33
        mem[_1272 + 224] = uint8(stor24[idx].field_1792)
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        mem[_1272 + 256] = uint8(stor24[idx].field_1800)
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[idx].field_1800) == 4:
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_7e953ee7) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2833 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2833] > -1 / uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2833] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2833] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and sub_7e953ee7 > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * sub_7e953ee7 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7:
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_7e953ee7) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_7e953ee7) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2834 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2834] > -1 / uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2834] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2834] / 10000)
            t = t + (uint256(stor24[idx].field_512) * sub_7e953ee7 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[idx].field_1800) != 5:
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint8(stor24[idx].field_1800) > 5:
                revert with 0, 33
            if uint8(stor24[idx].field_1800) == 5:
                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                    revert with 0, 17
                if block.timestamp < uint256(stor24[idx].field_768):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) and sub_f5597032 > -1 / uint256(stor24[idx].field_1280):
                    revert with 0, 17
                if uint256(stor24[idx].field_1280) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * sub_f5597032:
                    revert with 0, 17
                if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * sub_f5597032) / 10000 / 24 * 3600):
                    revert with 0, 17
                mem[mem[64] + 4] = idx
                mem[mem[64] + 36] = 1
                require ext_code.size(stor21)
                staticcall stor21.0x9a2754f4 with:
                        gas gas_remaining wei
                       args idx, 1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2885 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2885] > -1 / uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                    revert with 0, 17
                if t > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                    revert with 0, 17
                if s > !(uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2885] / 10000):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2885] / 10000)
                t = t + (uint256(stor24[idx].field_1280) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
                continue 
            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_512) and sub_f5597032 > -1 / uint256(stor24[idx].field_512):
                revert with 0, 17
            if uint256(stor24[idx].field_512) * sub_f5597032 and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * sub_f5597032:
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * sub_f5597032) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * sub_f5597032) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2886 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2886] > -1 / uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2886] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2886] / 10000)
            t = t + (uint256(stor24[idx].field_512) * sub_f5597032 * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        mem[0] = idx
        mem[32] = 23
        if block.timestamp < uint256(stor24[idx].field_768):
            revert with 0, 17
        if uint8(stor24[idx].field_1800) > 5:
            revert with 0, 33
        if uint8(stor24[idx].field_1800) == 5:
            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                revert with 0, 17
            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if block.timestamp < uint256(stor24[idx].field_768):
                revert with 0, 17
            if uint256(stor24[idx].field_1280) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_1280):
                revert with 0, 17
            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0):
                revert with 0, 17
            if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
                revert with 0, 17
            mem[mem[64] + 4] = idx
            mem[mem[64] + 36] = 1
            require ext_code.size(stor21)
            staticcall stor21.0x9a2754f4 with:
                    gas gas_remaining wei
                   args idx, 1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2883 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2883] > -1 / uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
                revert with 0, 17
            if t > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
                revert with 0, 17
            if s > !(uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2883] / 10000):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2883] / 10000)
            t = t + (uint256(stor24[idx].field_1280) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
            continue 
        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
            revert with 0, 17
        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
            revert with 0, 17
        if block.timestamp < uint256(stor24[idx].field_768):
            revert with 0, 17
        if uint256(stor24[idx].field_512) and uint256(sub_ded2abc3[idx].field_0) > -1 / uint256(stor24[idx].field_512):
            revert with 0, 17
        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) and block.timestamp - uint256(stor24[idx].field_768) > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0):
            revert with 0, 17
        if uint256(stor24[idx].field_1024) > !((block.timestamp * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) - (uint256(stor24[idx].field_768) * uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0)) / 10000 / 24 * 3600):
            revert with 0, 17
        mem[mem[64] + 4] = idx
        mem[mem[64] + 36] = 1
        require ext_code.size(stor21)
        staticcall stor21.0x9a2754f4 with:
                gas gas_remaining wei
               args idx, 1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2884 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 and mem[_2884] > -1 / uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000:
            revert with 0, 17
        if t > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000):
            revert with 0, 17
        if s > !(uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2884] / 10000):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000 * mem[_2884] / 10000)
        t = t + (uint256(stor24[idx].field_512) * uint256(sub_ded2abc3[idx].field_0) * block.timestamp - uint256(stor24[idx].field_768) / 24 * 3600 / 10000)
        continue 
    return t, s
}



}
