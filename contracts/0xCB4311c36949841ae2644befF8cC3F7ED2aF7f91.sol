contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const CANNOT_TRANSFER_TO_ZERO_ADDRESS = '018002', 0

const NOT_CURRENT_OWNER = '018001', 0


mapping of uint8 stor0;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;
array of struct stor6;
array of struct stor7;
array of struct stor8;
array of struct stor9;
uint256 supply;
uint256 maxSupply;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    return bool(stor0[Mask(32, 224, arg1)])
}

function supply() payable {
    return supply
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not ownerOf[arg1]:
        revert with 0, '003002', 0
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '003001', 0
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function maxSupply() payable {
    return maxSupply
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor4[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setMaxSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    maxSupply = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor4[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '018001', 0
    if not arg1:
        revert with 0, '018002', 0
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg2] != msg.sender:
        if not stor4[stor1[arg2]][address(msg.sender)]:
            revert with 0, '003003', 0
    if not ownerOf[arg2]:
        revert with 0, '003002', 0
    if arg1 == ownerOf[arg2]:
        revert with 0, '003008', 0
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
}

function setBaseURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '018001', 0
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor6[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor6.length = 0
            idx = 0
            while stor6.length.field_1 + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor4[stor1[arg3]][address(msg.sender)]:
                revert with 0, '003004', 0
    if not ownerOf[arg3]:
        revert with 0, '003002', 0
    if ownerOf[arg3] != arg1:
        revert with 0, '003007', 0
    if not arg2:
        revert with 0, '003001', 0
    approved[arg3] = 0
    if ownerOf[arg3] != ownerOf[arg3]:
        revert with 0, '003007', 0
    if balanceOf[stor1[arg3]] < 1:
        revert with 'NH{q', 17
    balanceOf[stor1[arg3]]--
    ownerOf[arg3] = 0
    if ownerOf[arg3]:
        revert with 0, '003006', 0
    ownerOf[arg3] = arg2
    if balanceOf[address(arg2)] > -2:
        revert with 'NH{q', 17
    balanceOf[address(arg2)]++
    emit Transfer(ownerOf[arg3], arg2, arg3);
    if ext_code.hash(arg2):
        if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, '003005', 0
}

function bulkMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[64] = 160
    mem[96] = 6
    mem[128] = '018001'
    if owner != msg.sender:
        revert with 0, '018001', 0
    require arg2 > 0
    if supply > -arg2 - 1:
        revert with 'NH{q', 17
    require supply + arg2 <= maxSupply
    idx = 1
    while idx <= arg2:
        if supply > -idx - 1:
            revert with 'NH{q', 17
        _40 = mem[64]
        mem[64] = mem[64] + 64
        mem[_40] = 6
        mem[_40 + 32] = '018001'
        if owner != msg.sender:
            _41 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 6
            idx = 0
            while idx < 6:
                mem[_41 + idx + 68] = mem[_40 + idx + 32]
                idx = idx + 32
                continue 
            mem[_41 + 74] = 0
            revert with memory
              from mem[64]
               len _41 + -mem[64] + 100
        _42 = mem[64]
        mem[64] = mem[64] + 64
        mem[_42] = 6
        mem[_42 + 32] = '003001'
        if not arg1:
            _45 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 6
            idx = 0
            while idx < 6:
                mem[_45 + idx + 68] = mem[_42 + idx + 32]
                idx = idx + 32
                continue 
            mem[_45 + 74] = 0
            revert with memory
              from mem[64]
               len _45 + -mem[64] + 100
        mem[0] = supply + idx
        mem[32] = 1
        _44 = mem[64]
        mem[64] = mem[64] + 64
        mem[_44] = 6
        mem[_44 + 32] = '003006'
        if ownerOf[stor10 + idx]:
            _46 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 6
            idx = 0
            while idx < 6:
                mem[_46 + idx + 68] = mem[_44 + idx + 32]
                idx = idx + 32
                continue 
            mem[_46 + 74] = 0
            revert with memory
              from mem[64]
               len _46 + -mem[64] + 100
        mem[0] = supply + idx
        mem[32] = 1
        _49 = mem[64]
        mem[64] = mem[64] + 64
        mem[_49] = 6
        mem[_49 + 32] = '003006'
        if ownerOf[stor10 + idx]:
            _52 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 6
            idx = 0
            while idx < 6:
                mem[_52 + idx + 68] = mem[_49 + idx + 32]
                idx = idx + 32
                continue 
            mem[_52 + 74] = 0
            revert with memory
              from mem[64]
               len _52 + -mem[64] + 100
        ownerOf[stor10 + idx] = arg1
        mem[0] = arg1
        mem[32] = 3
        if balanceOf[address(arg1)] > -2:
            revert with 'NH{q', 17
        balanceOf[address(arg1)]++
        emit Transfer(0, arg1, supply + idx);
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if supply > -arg2 - 1:
        revert with 'NH{q', 17
    supply += arg2
}

function name() payable {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol() payable {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function baseURI() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}

function baseExtension() payable {
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor9.length):
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        else:
            if bool(stor9.length) == stor9.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor9.length.field_1:
                if 31 < stor9.length.field_1:
                    mem[128] = uint256(stor9.field_0)
                    idx = 128
                    s = 0
                    while stor9.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor9[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)])
                mem[128] = 256 * stor9.length.field_8
        mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
        if ceil32(stor9.length.field_1) > stor9.length.field_1:
            mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9.length.field_1), data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
    if bool(stor9.length) == stor9.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor9.length):
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    else:
        if bool(stor9.length) == stor9.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor9.length.field_1:
            if 31 < stor9.length.field_1:
                mem[128] = uint256(stor9.field_0)
                idx = 128
                s = 0
                while stor9.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor9[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)])
            mem[128] = 256 * stor9.length.field_8
    mem[ceil32(stor9.length.field_1) + 192 len ceil32(stor9.length.field_1)] = mem[128 len ceil32(stor9.length.field_1)]
    if ceil32(stor9.length.field_1) > stor9.length.field_1:
        mem[ceil32(stor9.length.field_1) + stor9.length.field_1 + 192] = 0
    return Array(len=stor9.length % 128, data=mem[128 len ceil32(stor9.length.field_1)], mem[(2 * ceil32(stor9.length.field_1)) + 192 len 2 * ceil32(stor9.length.field_1)]), 
}

function contractURI() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        mem[96] = stor6.length.field_1
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor6.length.field_1:
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1287 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1287) > _1287:
                                    mem[_1287 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1287) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1328 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1328) > _1328:
                                mem[_1328 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1328) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1329 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1329) > _1329:
                                    mem[_1329 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1329) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1369 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1369) > _1369:
                                mem[_1369 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1369) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor6.length.field_1:
                    mem[128] = 256 * stor6.length.field_8
                    if stor6.length.field_1 <= 0:
                        return ''
                    mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                    if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _1292 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_1292) > _1292:
                                        mem[_1292 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1292) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1333 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1333) > _1333:
                                    mem[_1333 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1333) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _1334 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_1334) > _1334:
                                        mem[_1334 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1334) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1372 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1372) > _1372:
                                    mem[_1372 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1372) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor6.length.field_1 <= 0:
                        return ''
                    mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                    if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _2511 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_2511) > _2511:
                                        mem[_2511 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2511) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2532 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2532) > _2532:
                                    mem[_2532 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2532) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _2533 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_2533) > _2533:
                                        mem[_2533 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2533) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2553 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2553) > _2553:
                                    mem[_2553 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2553) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if not stor6.length.field_1:
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1297 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1297) > _1297:
                                    mem[_1297 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1297) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1338 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1338) > _1338:
                                mem[_1338 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1338) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1339 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1339) > _1339:
                                    mem[_1339 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1339) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1375 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1375) > _1375:
                                mem[_1375 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1375) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if 31 >= stor6.length.field_1:
                    mem[128] = 256 * stor6.length.field_8
                    if stor6.length.field_1 <= 0:
                        return ''
                    mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                    if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _1302 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_1302) > _1302:
                                        mem[_1302 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1302) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1343 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1343) > _1343:
                                    mem[_1343 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1343) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _1344 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_1344) > _1344:
                                        mem[_1344 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_1344) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1378 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1378) > _1378:
                                    mem[_1378 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1378) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if stor6.length.field_1 <= 0:
                        return ''
                    mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                    if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _2516 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_2516) > _2516:
                                        mem[_2516 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2516) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2537 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2537) > _2537:
                                    mem[_2537 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2537) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                    else:
                        if bool(stor9.length):
                            if bool(stor9.length) == stor9.length.field_1 < 32:
                                revert with 'NH{q', 34
                            if not bool(stor9.length):
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                            else:
                                if bool(stor9.length) != 1:
                                    mem[64] = 0
                                    _2538 = mem[ceil32(stor6.length.field_1) + 128]
                                    mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                    if ceil32(_2538) > _2538:
                                        mem[_2538 + 64] = 0
                                    return memory
                                      from mem[64]
                                       len ceil32(_2538) + -mem[64] + 64
                                idx = 0
                                s = 0
                                while idx < stor9.length.field_1:
                                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                                return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                            return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2556 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2556) > _2556:
                                    mem[_2556 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2556) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    mem[96] = stor6.length.field_1
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor6.length.field_1:
            if stor6.length.field_1 <= 0:
                return ''
            mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
            if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                if bool(stor9.length):
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1307 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1307) > _1307:
                                mem[_1307 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1307) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                        return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                    return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor9.length):
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                else:
                    if bool(stor9.length) != 1:
                        mem[64] = 0
                        _1348 = mem[ceil32(stor6.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(_1348) > _1348:
                            mem[_1348 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1348) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9.length.field_1:
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor9.length):
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1349 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1349) > _1349:
                                mem[_1349 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1349) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                        return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                    return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor9.length):
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                else:
                    if bool(stor9.length) != 1:
                        mem[64] = 0
                        _1381 = mem[ceil32(stor6.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(_1381) > _1381:
                            mem[_1381 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1381) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9.length.field_1:
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor6.length.field_1:
                mem[128] = 256 * stor6.length.field_8
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1312 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1312) > _1312:
                                    mem[_1312 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1312) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1353 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1353) > _1353:
                                mem[_1353 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1353) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1354 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1354) > _1354:
                                    mem[_1354 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1354) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1384 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1384) > _1384:
                                mem[_1384 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1384) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2521 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2521) > _2521:
                                    mem[_2521 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2521) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _2542 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_2542) > _2542:
                                mem[_2542 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2542) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2543 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2543) > _2543:
                                    mem[_2543 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2543) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _2559 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_2559) > _2559:
                                mem[_2559 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2559) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if not stor6.length.field_1:
            if stor6.length.field_1 <= 0:
                return ''
            mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
            if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                if bool(stor9.length):
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1317 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1317) > _1317:
                                mem[_1317 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1317) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                        return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                    return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor9.length):
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                else:
                    if bool(stor9.length) != 1:
                        mem[64] = 0
                        _1358 = mem[ceil32(stor6.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(_1358) > _1358:
                            mem[_1358 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1358) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9.length.field_1:
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
            else:
                if bool(stor9.length):
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1359 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1359) > _1359:
                                mem[_1359 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1359) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                    if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                        return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                    return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                if bool(stor9.length) == stor9.length.field_1 < 32:
                    revert with 'NH{q', 34
                if not bool(stor9.length):
                    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                else:
                    if bool(stor9.length) != 1:
                        mem[64] = 0
                        _1387 = mem[ceil32(stor6.length.field_1) + 128]
                        mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(_1387) > _1387:
                            mem[_1387 + 64] = 0
                        return memory
                          from mem[64]
                           len ceil32(_1387) + -mem[64] + 64
                    idx = 0
                    s = 0
                    while idx < stor9.length.field_1:
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if 31 >= stor6.length.field_1:
                mem[128] = 256 * stor6.length.field_8
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1322 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1322) > _1322:
                                    mem[_1322 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1322) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1363 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1363) > _1363:
                                mem[_1363 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1363) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _1364 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_1364) > _1364:
                                    mem[_1364 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_1364) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _1390 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_1390) > _1390:
                                mem[_1390 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_1390) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if stor6.length.field_1 <= 0:
                    return ''
                mem[ceil32(stor6.length.field_1) + 160 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 160] = 'metadata'
                if ceil32(stor6.length.field_1) <= stor6.length.field_1:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2526 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2526) > _2526:
                                    mem[_2526 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2526) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _2547 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_2547) > _2547:
                                mem[_2547 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2547) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
                else:
                    if bool(stor9.length):
                        if bool(stor9.length) == stor9.length.field_1 < 32:
                            revert with 'NH{q', 34
                        if not bool(stor9.length):
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                        else:
                            if bool(stor9.length) != 1:
                                mem[64] = 0
                                _2548 = mem[ceil32(stor6.length.field_1) + 128]
                                mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                                if ceil32(_2548) > _2548:
                                    mem[_2548 + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_2548) + -mem[64] + 64
                            idx = 0
                            s = 0
                            while idx < stor9.length.field_1:
                                mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                        if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
                            return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
                        return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
                    if bool(stor9.length) == stor9.length.field_1 < 32:
                        revert with 'NH{q', 34
                    if not bool(stor9.length):
                        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 168] = Mask(248, 8, stor9.length)
                    else:
                        if bool(stor9.length) != 1:
                            mem[64] = 0
                            _2562 = mem[ceil32(stor6.length.field_1) + 128]
                            mem[64 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
                            if ceil32(_2562) > _2562:
                                mem[_2562 + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_2562) + -mem[64] + 64
                        idx = 0
                        s = 0
                        while idx < stor9.length.field_1:
                            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + idx + 168] = stor9[s].field_0
                            idx = idx + 32
                            s = s + 1
                            continue 
    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 168] = 32
    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200] = mem[ceil32(stor6.length.field_1) + 128]
    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])] = mem[ceil32(stor6.length.field_1) + 160 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]
    if ceil32(mem[ceil32(stor6.length.field_1) + 128]) <= mem[ceil32(stor6.length.field_1) + 128]:
        return Array(len=mem[ceil32(stor6.length.field_1) + 128], data=mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 232 len ceil32(mem[ceil32(stor6.length.field_1) + 128])]), 
    mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + mem[ceil32(stor6.length.field_1) + 128] + 232] = 0
    return 32, mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + stor9.length.field_1 + 200 len ceil32(mem[ceil32(stor6.length.field_1) + 128]) + 32], 
}



}
