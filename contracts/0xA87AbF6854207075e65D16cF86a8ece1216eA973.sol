contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
const sub_29745262(?) = 10 * 10^6

const sub_558fa0f5(?) = 39

const sub_63f204d0(?) = 10^6


array of struct stor0;
array of struct stor1;
mapping of uint256 balanceOf;
mapping of address ownerOf;
mapping of address approved;
mapping of uint8 stor5;
uint256 totalSupply;
uint256 stor7;
mapping of struct stor8;
mapping of struct stor9;
address royaltyReceiverAddress;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return approved[arg1]
}

function totalSupply() payable {
    return totalSupply
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function royaltyReceiver() payable {
    return royaltyReceiverAddress
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor5[arg1][arg2])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    stor5[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function royaltyInfo(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 / 10 * 10^6 and 10^6 > -1 / arg2 / 10 * 10^6:
        revert with 'NH{q', 17
    return royaltyReceiverAddress, 10^6 * arg2 / 10 * 10^6
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ownerOf[arg2] != msg.sender:
        if not stor5[stor3[arg2]][address(msg.sender)]:
            revert with 0, 'NOT_AUTHORIZED'
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x2a55205a00000000000000000000000000000000000000000000000000000000)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != ownerOf[arg3]:
        revert with 0, 'WRONG_FROM'
    if not arg2:
        revert with 0, 'INVALID_RECIPIENT'
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[address(arg1)][address(msg.sender)]:
                revert with 0, 'NOT_AUTHORIZED'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != ownerOf[arg3]:
        revert with 0, 'WRONG_FROM'
    if not arg2:
        revert with 0, 'INVALID_RECIPIENT'
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[address(arg1)][address(msg.sender)]:
                revert with 0, 'NOT_AUTHORIZED'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'UNSAFE_RECIPIENT'
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
    if arg1 != ownerOf[arg3]:
        revert with 0, 'WRONG_FROM'
    if not arg2:
        revert with 0, 'INVALID_RECIPIENT'
    if arg1 != msg.sender:
        if approved[arg3] != msg.sender:
            if not stor5[address(arg1)][address(msg.sender)]:
                revert with 0, 'NOT_AUTHORIZED'
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    approved[arg3] = 0
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'UNSAFE_RECIPIENT'
}

function name() payable {
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

function symbol() payable {
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

function sub_a86faa8c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_0:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        else:
            if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor8[arg1].field_1:
                if 31 < stor8[arg1].field_1:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)])
                mem[128] = 256 * stor8[arg1].field_8
        mem[ceil32(stor8[arg1].field_1) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
        if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
            mem[ceil32(stor8[arg1].field_1) + stor8[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_1), data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 192 len 2 * ceil32(stor8[arg1].field_1)]), 
    if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor8[arg1].field_0:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    else:
        if stor8[arg1].field_0 == stor8[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor8[arg1].field_1:
            if 31 < stor8[arg1].field_1:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)])
            mem[128] = 256 * stor8[arg1].field_8
    mem[ceil32(stor8[arg1].field_1) + 192 len ceil32(stor8[arg1].field_1)] = mem[128 len ceil32(stor8[arg1].field_1)]
    if ceil32(stor8[arg1].field_1) > stor8[arg1].field_1:
        mem[ceil32(stor8[arg1].field_1) + stor8[arg1].field_1 + 192] = 0
    return Array(len=stor8[arg1].field_0, data=mem[128 len ceil32(stor8[arg1].field_1)], mem[(2 * ceil32(stor8[arg1].field_1)) + 192 len 2 * ceil32(stor8[arg1].field_1)]), 
}

function sub_e227fddb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_0:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 < stor9[arg1].field_1:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)])
                mem[128] = 256 * stor9[arg1].field_8
        else:
            if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor9[arg1].field_1:
                if 31 < stor9[arg1].field_1:
                    mem[128] = stor9[arg1].field_0
                    idx = 128
                    s = 0
                    while stor9[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor9[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)])
                mem[128] = 256 * stor9[arg1].field_8
        mem[ceil32(stor9[arg1].field_1) + 192 len ceil32(stor9[arg1].field_1)] = mem[128 len ceil32(stor9[arg1].field_1)]
        if ceil32(stor9[arg1].field_1) > stor9[arg1].field_1:
            mem[ceil32(stor9[arg1].field_1) + stor9[arg1].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor9[arg1].field_1), data=mem[128 len ceil32(stor9[arg1].field_1)], mem[(2 * ceil32(stor9[arg1].field_1)) + 192 len 2 * ceil32(stor9[arg1].field_1)]), 
    if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor9[arg1].field_0:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 < stor9[arg1].field_1:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)])
            mem[128] = 256 * stor9[arg1].field_8
    else:
        if stor9[arg1].field_0 == stor9[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor9[arg1].field_1:
            if 31 < stor9[arg1].field_1:
                mem[128] = stor9[arg1].field_0
                idx = 128
                s = 0
                while stor9[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor9[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)])
            mem[128] = 256 * stor9[arg1].field_8
    mem[ceil32(stor9[arg1].field_1) + 192 len ceil32(stor9[arg1].field_1)] = mem[128 len ceil32(stor9[arg1].field_1)]
    if ceil32(stor9[arg1].field_1) > stor9[arg1].field_1:
        mem[ceil32(stor9[arg1].field_1) + stor9[arg1].field_1 + 192] = 0
    return Array(len=stor9[arg1].field_0, data=mem[128 len ceil32(stor9[arg1].field_1)], mem[(2 * ceil32(stor9[arg1].field_1)) + 192 len 2 * ceil32(stor9[arg1].field_1)]), 
}

function sub_44e09ced(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 100).length) + 97 > test266151307() or floor32(('cd', 100).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[floor32(('cd', 100).length) + 129 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[floor32(('cd', 100).length) + ('cd', 36).length + 129] = 0
    mem[floor32(('cd', 100).length) + ('cd', 36).length + 129 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[floor32(('cd', 100).length) + ('cd', 36).length + ('cd', 68).length + 129] = 0
    mem[floor32(('cd', 100).length) + 97] = ('cd', 36).length + ('cd', 68).length
    mem[64] = floor32(('cd', 100).length) + ('cd', 36).length + ('cd', 68).length + 129
    idx = 0
    s = 0
    while idx < ('cd', 100).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _92 = mem[(32 * idx) + 128]
        if s + sha3(mem[floor32(('cd', 100).length) + 129 len mem[floor32(('cd', 100).length) + 97]]) > mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 100).length) + 129 len mem[floor32(('cd', 100).length) + 97]])
            _106 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_106 + 32 len mem[_106]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 100).length) + 129 len mem[floor32(('cd', 100).length) + 97]])
        mem[mem[64] + 64] = _92
        _109 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_109 + 32 len mem[_109]])
        continue 
    if s != stor7:
        revert with 0, 'poem not match'
    if stor8[cd[4]].field_0:
        if stor8[cd[4]].field_0 == stor8[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor8[cd[4]].field_0 = 0
            idx = 0
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor8[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor8[cd[4]].field_0 == stor8[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 36).length:
            stor8[cd[4]].field_0 = 0
            idx = 0
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor8[cd[4]].field_0 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor8[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor8[cd[4]].field_1 + 31 / 32 > idx:
                stor8[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    if stor9[cd[4]].field_0:
        if stor9[cd[4]].field_0 == stor9[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 68).length:
            stor9[cd[4]].field_0 = 0
            idx = 0
            while stor9[cd[4]].field_1 + 31 / 32 > idx:
                stor9[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor9[cd[4]].field_0 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor9[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor9[cd[4]].field_1 + 31 / 32 > idx:
                stor9[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor9[cd[4]].field_0 == stor9[cd[4]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 68).length:
            stor9[cd[4]].field_0 = 0
            idx = 0
            while stor9[cd[4]].field_1 + 31 / 32 > idx:
                stor9[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor9[cd[4]].field_0 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor9[cd[4]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor9[cd[4]].field_1 + 31 / 32 > idx:
                stor9[cd[4]][idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_4cf34769(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if totalSupply >= 39:
        revert with 0, 'Mint would exceed max supply of NFTs'
    if totalSupply != cd[36]:
        revert with 0, 'Must add poem data for yours'
    mem[floor32(('cd', 132).length) + 129 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[floor32(('cd', 132).length) + ('cd', 68).length + 129] = 0
    mem[floor32(('cd', 132).length) + ('cd', 68).length + 129 len ('cd', 100).length] = call.data[cd[100] + 36 len ('cd', 100).length]
    mem[floor32(('cd', 132).length) + ('cd', 68).length + ('cd', 100).length + 129] = 0
    mem[floor32(('cd', 132).length) + 97] = ('cd', 68).length + ('cd', 100).length
    mem[64] = floor32(('cd', 132).length) + ('cd', 68).length + ('cd', 100).length + 129
    idx = 0
    s = 0
    while idx < ('cd', 132).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2020 = mem[(32 * idx) + 128]
        if s + sha3(mem[floor32(('cd', 132).length) + 129 len mem[floor32(('cd', 132).length) + 97]]) > mem[(32 * idx) + 128]:
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = s + sha3(mem[floor32(('cd', 132).length) + 129 len mem[floor32(('cd', 132).length) + 97]])
            _2034 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = sha3(mem[_2034 + 32 len mem[_2034]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[floor32(('cd', 132).length) + 129 len mem[floor32(('cd', 132).length) + 97]])
        mem[mem[64] + 64] = _2020
        _2037 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = sha3(mem[_2037 + 32 len mem[_2037]])
        continue 
    if s != stor7:
        revert with 0, 'poem not match'
    if stor8[cd[36]].field_0:
        if stor8[cd[36]].field_0 == stor8[cd[36]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 68).length:
            stor8[cd[36]].field_0 = 0
            idx = 0
            while stor8[cd[36]].field_1 + 31 / 32 > idx:
                stor8[cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
            if stor9[cd[36]].field_0:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4698 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4698] == Mask(32, 224, mem[_4698])
                        if Mask(32, 224, mem[_4698]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5282 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5282] == Mask(32, 224, mem[_5282])
                        if Mask(32, 224, mem[_5282]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
            else:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4701 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4701] == Mask(32, 224, mem[_4701])
                        if Mask(32, 224, mem[_4701]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5283 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5283] == Mask(32, 224, mem[_5283])
                        if Mask(32, 224, mem[_5283]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
        else:
            stor8[cd[36]].field_0 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor8[cd[36]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor8[cd[36]].field_1 + 31 / 32 > idx:
                stor8[cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
            if stor9[cd[36]].field_0:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5276 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5276] == Mask(32, 224, mem[_5276])
                        if Mask(32, 224, mem[_5276]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5432] == Mask(32, 224, mem[_5432])
                        if Mask(32, 224, mem[_5432]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
            else:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5279] == Mask(32, 224, mem[_5279])
                        if Mask(32, 224, mem[_5279]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5433 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5433] == Mask(32, 224, mem[_5433])
                        if Mask(32, 224, mem[_5433]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
    else:
        if stor8[cd[36]].field_0 == stor8[cd[36]].field_1 < 32:
            revert with 'NH{q', 34
        if not ('cd', 68).length:
            stor8[cd[36]].field_0 = 0
            idx = 0
            while stor8[cd[36]].field_1 + 31 / 32 > idx:
                stor8[cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
            if stor9[cd[36]].field_0:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4716 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4716] == Mask(32, 224, mem[_4716])
                        if Mask(32, 224, mem[_4716]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5294 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5294] == Mask(32, 224, mem[_5294])
                        if Mask(32, 224, mem[_5294]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
            else:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4719 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4719] == Mask(32, 224, mem[_4719])
                        if Mask(32, 224, mem[_4719]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5295 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5295] == Mask(32, 224, mem[_5295])
                        if Mask(32, 224, mem[_5295]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
        else:
            stor8[cd[36]].field_0 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor8[cd[36]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor8[cd[36]].field_1 + 31 / 32 > idx:
                stor8[cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
            if stor9[cd[36]].field_0:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5288 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5288] == Mask(32, 224, mem[_5288])
                        if Mask(32, 224, mem[_5288]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5434 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5434] == Mask(32, 224, mem[_5434])
                        if Mask(32, 224, mem[_5434]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
            else:
                if stor9[cd[36]].field_0 == stor9[cd[36]].field_1 < 32:
                    revert with 'NH{q', 34
                if not ('cd', 100).length:
                    stor9[cd[36]].field_0 = 0
                    idx = 0
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5291 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5291] == Mask(32, 224, mem[_5291])
                        if Mask(32, 224, mem[_5291]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
                else:
                    stor9[cd[36]].field_0 = (2 * ('cd', 100).length) + 1
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + ('cd', 100).length + 36 > idx:
                        stor9[cd[36]][s].field_0 = cd[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
                    while stor9[cd[36]].field_1 + 31 / 32 > idx:
                        stor9[cd[36]][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    totalSupply++
                    if not address(cd[4]):
                        revert with 0, 'INVALID_RECIPIENT'
                    if ownerOf[stor6]:
                        revert with 0, 'ALREADY_MINTED'
                    balanceOf[address(cd[4])]++
                    mem[0] = totalSupply
                    mem[32] = 3
                    ownerOf[stor6] = address(cd[4])
                    emit Transfer(0, address(cd[4]), totalSupply);
                    if ext_code.size(address(cd[4])):
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = totalSupply
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = 0
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args msg.sender, 0, totalSupply, 128, 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5435 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5435] == Mask(32, 224, mem[_5435])
                        if Mask(32, 224, mem[_5435]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'UNSAFE_RECIPIENT'
}



}
