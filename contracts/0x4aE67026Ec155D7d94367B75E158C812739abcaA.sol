contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, address arg3)
#  - sub_09fec2ad(?)
#  - sub_15c8d4b6(?)
#  - sub_7897f76a(?)
#  - tokenURI(uint256 arg1)
#
const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
mapping of struct stor152;
uint8 paused;
uint256 tokenCount;
mapping of struct stor155;
array of struct stor156;
address stor157;
mapping of struct stor159;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function paused() payable {
    return bool(paused)
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

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(uint8(stor152[arg1][address(arg2)].field_0))
}

function tokenCount() payable {
    return tokenCount
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

function creator() payable {
    if 0 == stor157:
        return owner
    return stor157
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require uint8(stor152[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][address(msg.sender)].field_0)
    paused = uint8(arg1)
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == msg.sender:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require uint8(stor152[stor152[arg1].field_256][address(msg.sender)].field_0)
    if not uint8(stor152[arg1][address(arg2)].field_0):
        uint8(stor152[arg1][address(arg2)].field_0) = 1
        emit RoleGranted(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0xa09b15e200000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x8d64e2bb00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_efe210ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[ceil32(ceil32(arg1.length)) + arg1.length + 97] = 160
    mem[ceil32(ceil32(arg1.length)) + 97] = stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    return memory
      from ceil32(ceil32(arg1.length)) + 97
       len 32
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

function sub_d9c888ec(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 64
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4).length + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + 161 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + 161 < 160:
        revert with 'NH{q', 65
    require cd[4] + ('cd', 4).length + cd[(cd[4] + ('cd', 4).length + 4)] + 36 <= calldata.size
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require owner == msg.sender
    if bool(stor156.length):
        if bool(stor156.length) == uint255(stor156.length.field_1) < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4).length + 4)]:
            stor156[].field_0 = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
        else:
            stor156.length = 0
            idx = 0
            while uint255(stor156.length.field_1) + 31 / 32 > idx:
                stor156[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor156.length) == stor156.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4).length + 4)]:
            stor156[].field_0 = Array(len=cd[(cd[4] + ('cd', 4).length + 4)], data=call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]])
        else:
            stor156.length = 0
            idx = 0
            while stor156.length.field_1 % 128 + 31 / 32 > idx:
                stor156[idx].field_0 = 0
                idx = idx + 1
                continue 
    stor157 = address(('cd', 4)[0])
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    require not paused
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
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    require not paused
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
        revert with 0, 'ERC721: transfer of token that is not own'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    require not paused
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

function config() payable {
    if bool(stor156.length):
        if bool(stor156.length) == uint255(stor156.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor156.length):
            if bool(stor156.length) == uint255(stor156.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor156.length.field_1):
                if 31 >= uint255(stor156.length.field_1):
                    mem[128] = 256 * Mask(248, 0, stor156.length.field_8)
                else:
                    mem[128] = uint256(stor156.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor156.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor156[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor156.length) == stor156.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor156.length.field_1 % 128:
                if 31 >= stor156.length.field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor156.length.field_8)
                else:
                    mem[128] = uint256(stor156.field_0)
                    idx = 128
                    s = 0
                    while stor156.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor156[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, uint255(stor156.length.field_1)), data=mem[128 len ceil32(uint255(stor156.length.field_1))]), 
               stor157
    if bool(stor156.length) == stor156.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor156.length):
        if bool(stor156.length) == uint255(stor156.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor156.length.field_1):
            if 31 >= uint255(stor156.length.field_1):
                mem[128] = 256 * Mask(248, 0, stor156.length.field_8)
            else:
                mem[128] = uint256(stor156.field_0)
                idx = 128
                s = 0
                while uint255(stor156.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor156[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor156.length) == stor156.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor156.length.field_1 % 128:
            if 31 >= stor156.length.field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor156.length.field_8)
            else:
                mem[128] = uint256(stor156.field_0)
                idx = 128
                s = 0
                while stor156.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor156[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor156.length % 128, data=mem[128 len ceil32(stor156.length.field_1 % 128)]), stor157
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg1] != msg.sender:
        if not ownerOf[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg1] != msg.sender:
            require stor106[stor103[arg1]][address(msg.sender)]
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    require not paused
    approved[arg1] = 0
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg1], 0, arg1);
    if balanceOf[stor103[arg1]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor103[arg1]]--
    ownerOf[arg1] = 0
    emit Transfer(ownerOf[arg1], 0, arg1);
    if bool(stor155[arg1].field_0):
        if bool(stor155[arg1].field_0) == uint255(stor155[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor155[arg1].field_1):
            if bool(stor155[arg1].field_0):
                if bool(stor155[arg1].field_0) == uint255(stor155[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor155[arg1].field_0 = 0
                if 31 < uint255(stor155[arg1].field_1):
                    idx = 0
                    while uint255(stor155[arg1].field_1) + 31 / 32 > idx:
                        stor155[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor155[arg1].field_0) == stor155[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor155[arg1].field_0 = 0
                if 31 < stor155[arg1].field_1 % 128:
                    idx = 0
                    while stor155[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor155[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        if bool(stor155[arg1].field_0) == stor155[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor155[arg1].field_1 % 128:
            if bool(stor155[arg1].field_0):
                if bool(stor155[arg1].field_0) == uint255(stor155[arg1].field_1) < 32:
                    revert with 'NH{q', 34
                stor155[arg1].field_0 = 0
                if 31 < uint255(stor155[arg1].field_1):
                    idx = 0
                    while uint255(stor155[arg1].field_1) + 31 / 32 > idx:
                        stor155[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor155[arg1].field_0) == stor155[arg1].field_1 % 128 < 32:
                    revert with 'NH{q', 34
                stor155[arg1].field_0 = 0
                if 31 < stor155[arg1].field_1 % 128:
                    idx = 0
                    while stor155[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor155[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor101.length.field_1):
                if 31 < uint255(stor101.length.field_1):
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor101.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor101.length.field_1)), data=mem[128 len ceil32(uint255(stor101.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor101.length.field_1 % 128:
                if 31 < stor101.length.field_1 % 128:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor101.length.field_1)), data=mem[128 len ceil32(uint255(stor101.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length.field_1)) + 192 len ceil32(uint255(stor101.length.field_1))] = mem[128 len ceil32(uint255(stor101.length.field_1))]
        if ceil32(uint255(stor101.length.field_1)) > uint255(stor101.length.field_1):
            mem[ceil32(uint255(stor101.length.field_1)) + uint255(stor101.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor101.length.field_1)), data=mem[128 len ceil32(uint255(stor101.length.field_1))], mem[(2 * ceil32(uint255(stor101.length.field_1))) + 192 len 2 * ceil32(uint255(stor101.length.field_1))]), 
    if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor101.length.field_1):
            if 31 < uint255(stor101.length.field_1):
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while uint255(stor101.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor101.length.field_1 % 128:
            if 31 < stor101.length.field_1 % 128:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    mem[ceil32(stor101.length.field_1 % 128) + 192 len ceil32(stor101.length.field_1 % 128)] = mem[128 len ceil32(stor101.length.field_1 % 128)]
    if ceil32(stor101.length.field_1 % 128) > stor101.length.field_1 % 128:
        mem[ceil32(stor101.length.field_1 % 128) + stor101.length.field_1 % 128 + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)], mem[(2 * ceil32(stor101.length.field_1 % 128)) + 192 len 2 * ceil32(stor101.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor102.length.field_1):
                if 31 < uint255(stor102.length.field_1):
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor102.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor102.length.field_1)), data=mem[128 len ceil32(uint255(stor102.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor102.length.field_1 % 128:
                if 31 < stor102.length.field_1 % 128:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor102.length.field_1)), data=mem[128 len ceil32(uint255(stor102.length.field_1))]), 
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length.field_1)) + 192 len ceil32(uint255(stor102.length.field_1))] = mem[128 len ceil32(uint255(stor102.length.field_1))]
        if ceil32(uint255(stor102.length.field_1)) > uint255(stor102.length.field_1):
            mem[ceil32(uint255(stor102.length.field_1)) + uint255(stor102.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor102.length.field_1)), data=mem[128 len ceil32(uint255(stor102.length.field_1))], mem[(2 * ceil32(uint255(stor102.length.field_1))) + 192 len 2 * ceil32(uint255(stor102.length.field_1))]), 
    if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor102.length.field_1):
            if 31 < uint255(stor102.length.field_1):
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while uint255(stor102.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor102.length.field_1 % 128:
            if 31 < stor102.length.field_1 % 128:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    mem[ceil32(stor102.length.field_1 % 128) + 192 len ceil32(stor102.length.field_1 % 128)] = mem[128 len ceil32(stor102.length.field_1 % 128)]
    if ceil32(stor102.length.field_1 % 128) > stor102.length.field_1 % 128:
        mem[ceil32(stor102.length.field_1 % 128) + stor102.length.field_1 % 128 + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
}

function sub_255904ce(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor159[arg1].field_0):
        if bool(stor159[arg1].field_0) == uint255(stor159[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor159[arg1].field_0):
            if bool(stor159[arg1].field_0) == uint255(stor159[arg1].field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor159[arg1].field_1):
                if 31 < uint255(stor159[arg1].field_1):
                    mem[128] = stor159[arg1].field_0
                    idx = 128
                    s = 0
                    while uint255(stor159[arg1].field_1) + 96 > idx:
                        mem[idx + 32] = stor159[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor159[arg1].field_1)), data=mem[128 len ceil32(uint255(stor159[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor159[arg1].field_8)
        else:
            if bool(stor159[arg1].field_0) == stor159[arg1].field_1 % 128 < 32:
                revert with 'NH{q', 34
            if stor159[arg1].field_1 % 128:
                if 31 < stor159[arg1].field_1 % 128:
                    mem[128] = stor159[arg1].field_0
                    idx = 128
                    s = 0
                    while stor159[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor159[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor159[arg1].field_1)), data=mem[128 len ceil32(uint255(stor159[arg1].field_1))])
                mem[128] = 256 * Mask(248, 0, stor159[arg1].field_8)
        mem[ceil32(uint255(stor159[arg1].field_1)) + 192 len ceil32(uint255(stor159[arg1].field_1))] = mem[128 len ceil32(uint255(stor159[arg1].field_1))]
        if ceil32(uint255(stor159[arg1].field_1)) > uint255(stor159[arg1].field_1):
            mem[ceil32(uint255(stor159[arg1].field_1)) + uint255(stor159[arg1].field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor159[arg1].field_1)), data=mem[128 len ceil32(uint255(stor159[arg1].field_1))], mem[(2 * ceil32(uint255(stor159[arg1].field_1))) + 192 len 2 * ceil32(uint255(stor159[arg1].field_1))]), 
    if bool(stor159[arg1].field_0) == stor159[arg1].field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor159[arg1].field_0):
        if bool(stor159[arg1].field_0) == uint255(stor159[arg1].field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor159[arg1].field_1):
            if 31 < uint255(stor159[arg1].field_1):
                mem[128] = stor159[arg1].field_0
                idx = 128
                s = 0
                while uint255(stor159[arg1].field_1) + 96 > idx:
                    mem[idx + 32] = stor159[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor159[arg1].field_0 % 128, data=mem[128 len ceil32(stor159[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor159[arg1].field_8)
    else:
        if bool(stor159[arg1].field_0) == stor159[arg1].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if stor159[arg1].field_1 % 128:
            if 31 < stor159[arg1].field_1 % 128:
                mem[128] = stor159[arg1].field_0
                idx = 128
                s = 0
                while stor159[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor159[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor159[arg1].field_0 % 128, data=mem[128 len ceil32(stor159[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor159[arg1].field_8)
    mem[ceil32(stor159[arg1].field_1 % 128) + 192 len ceil32(stor159[arg1].field_1 % 128)] = mem[128 len ceil32(stor159[arg1].field_1 % 128)]
    if ceil32(stor159[arg1].field_1 % 128) > stor159[arg1].field_1 % 128:
        mem[ceil32(stor159[arg1].field_1 % 128) + stor159[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor159[arg1].field_0 % 128, data=mem[128 len ceil32(stor159[arg1].field_1 % 128)], mem[(2 * ceil32(stor159[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor159[arg1].field_1 % 128)]), 
}



}
